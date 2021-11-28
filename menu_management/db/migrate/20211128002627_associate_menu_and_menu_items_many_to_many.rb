class AssociateMenuAndMenuItemsManyToMany < ActiveRecord::Migration[6.1]
  def change
    create_table :menus_menuitems, id: false do |t|
      t.belongs_to :menus
      t.belongs_to :menuitems
    end
  end
end
