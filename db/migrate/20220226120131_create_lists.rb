class CreateLists < ActiveRecord::Migration[7.0]
  def change
    create_table :lists do |t|
      t.text :description
      t.boolean :status
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
