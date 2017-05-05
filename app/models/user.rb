class User < ApplicationRecord
	attr_accessor :remember_token
	validates :login,  presence: true, length: { maximum: 30 }, uniqueness: { case_sensitive: false }
	validates :password, :presence => true, :confirmation => true, length: {minimum: 6}, :if => :password
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