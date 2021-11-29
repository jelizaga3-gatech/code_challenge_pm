class RemoveMenuIdIndexFromMenuItem < ActiveRecord::Migration[6.1]
  def change
    remove_index :menuitems, name: "index_menuitems_on_menu_id"
  end
end
