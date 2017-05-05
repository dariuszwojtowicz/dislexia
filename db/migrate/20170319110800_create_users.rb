class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :login
      t.integer :year
      t.integer :level

      t.timestamps
    end

    create_table :day_master do |t|
      t.string :name
      t.string :day
    end

    create_table :month_master do |t|
      t.string :name
      t.string :day
    end
  end
end
