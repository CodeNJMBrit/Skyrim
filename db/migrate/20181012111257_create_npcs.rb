class CreateNpcs < ActiveRecord::Migration[5.2]
  def change
    create_table :npcs do |t|
      t.string :name
      t.text :description
      t.integer :level
      t.boolean :defeated_by_char

      t.timestamps
    end
  end
end
