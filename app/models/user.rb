class User < ApplicationRecord
	attr_accessor :remember_token
	validates :login,  presence: { message: "Login jest wymagany" }, length: { maximum: 30, message: "Login nie może być dłuższy niż 30 znaków" }, 
					   uniqueness: { case_sensitive: false, message: "Podany login już istnieje. Podaj inny." }
	validates :password, presence: { message: "Hasło jest wymagane" }, confirmation: { message: "Hasło i potwierdzenie hasła nie są identyczne" },
      					 length: { minimum: 6, message: "Hasło nie może być krótsze niż 6 znaków" }, :if => :password
	validates :password_confirmation, presence: { message: "Potwierdzenie hasła jest wymagane" }, :if => :password_confirmation
	has_secure_password

  	class << self
	  	def digest(string)
		  cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
		                                                  BCrypt::Engine.cost
		  BCrypt::Password.create(string, cost: cost)
		end

		def new_token
		  SecureRandom.urlsafe_base64
		end
	end

	def increase_level
		userr = User.find(1)
		userr.level = userr.level + 1
		userr.save
	end

	def remember
	  self.remember_token = User.new_token
      update_attribute(:remember_digest, User.digest(remember_token))
	end

	def authenticated?(remember_token)
	  return false if remember_digest.nil?
	  BCrypt::Password.new(remember_digest).is_password?(remember_token)
	end

	def forget
      update_attribute(:remember_digest, nil)
  	end
end