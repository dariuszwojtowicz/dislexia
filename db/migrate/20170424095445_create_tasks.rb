class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.integer :category_id
      t.string :content
      t.string :answer

      t.timestamps
    end

    create_table :words do |t|
      t.string :words
    end
    
    create_table :user_tasks do |t|
      t.integer :user_id
      t.integer :task_id
      t.integer :success
      t.string :answer

      t.timestamps
    end
  end
end
