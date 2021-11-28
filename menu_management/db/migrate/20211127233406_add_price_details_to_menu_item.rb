class AddPriceDetailsToMenuItem < ActiveRecord::Migration[6.1]
  def change
    add_column :menuitems, :price, :decimal, precision: 5, scale: 2
  end
end
