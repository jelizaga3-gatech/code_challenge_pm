class CreateRestaurantOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurant_orders do |t|
      t.references :diner, null:false, foreign_key:true
      t.references :restaurant, null:false, foreign_key:true
      t.decimal :subtotal, precision: 5, scale: 2
      t.decimal :tax, precision: 5, scale: 2
      t.decimal :total, precision: 5, scale: 2

      t.timestamps
    end
  end
end
