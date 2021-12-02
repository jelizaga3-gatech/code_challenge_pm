class CreateMenuItemOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_item_orders do |t|
      t.integer :quantity
      t.belongs_to :menuitems
      t.belongs_to :restaurant_orders
      t.timestamps
    end

    change_table :menuitems do |t|
      t.references :menu_item_orders
    end


  end
end
