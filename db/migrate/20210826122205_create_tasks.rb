class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.integer :category_id
      t.string :task_name
      t.string :task_description
      t.date :deadline
      t.boolean :iscompleted

      t.timestamps
    end
  end
end
