class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.text :note
      t.references :task, foreign_key: true
      t.timestamps
    end
  end
end
