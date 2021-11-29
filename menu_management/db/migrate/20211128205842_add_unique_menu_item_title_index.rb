class AddUniqueMenuItemTitleIndex < ActiveRecord::Migration[6.1]
  def change
    add_index :menuitems, :title, unique: true
  end
end
