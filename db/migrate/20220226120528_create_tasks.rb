class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.text :description
      t.boolean :status
      t.references :lists, null: false, foreign_key: true

      t.timestamps
    end
  end
end
