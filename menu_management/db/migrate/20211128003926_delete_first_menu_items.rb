class DeleteFirstMenuItems < ActiveRecord::Migration[6.1]
  def change
    drop_table :menus_menuitems
  end
end
