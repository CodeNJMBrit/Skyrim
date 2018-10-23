class ChangeNpcName < ActiveRecord::Migration[5.2]
  def change
    rename_table :npcs, :characters
  end
end
