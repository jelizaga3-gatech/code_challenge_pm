class RemoveMenuForeignKeyFromMenuItem < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :menuitems, :menus

  end
end
