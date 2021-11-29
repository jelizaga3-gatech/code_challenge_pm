class RemoveMenuIdFieldFromMenuItem < ActiveRecord::Migration[6.1]
  def change
    remove_column :menuitems, :menu_id

  end
end
