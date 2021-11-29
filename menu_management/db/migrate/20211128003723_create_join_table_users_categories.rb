class CreateJoinTableUsersCategories < ActiveRecord::Migration[6.1]
  def change
    create_join_table :menus, :menuitems do |t|
      t.index [:menu_id, :menuitem_id]
      t.index [:menuitem_id, :menu_id]
    end
  end
end
