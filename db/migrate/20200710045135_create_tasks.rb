class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :task_name, null: false
      t.datetime :start_date
      t.datetime :end_date
      t.timestamps
    end
  end
end
