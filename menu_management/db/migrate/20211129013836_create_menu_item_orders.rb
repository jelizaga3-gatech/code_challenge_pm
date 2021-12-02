class CreateMenuItemOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_item_orders do |t|
      # t.references :menuitems, null: true, foreign_key: true
      t.integer :quantity
      t.belongs_to :menuitems
      t.belongs_to :restaurant_orders
      t.timestamps
    end


  end
end
