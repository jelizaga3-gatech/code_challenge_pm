require "test_helper"

class MenuItemOrderTest < ActiveSupport::TestCase
  test "Create menu item order with quantity" do 
    menu_item_1 = Menuitem.find_by(title:"SteakDish2")
    restaurant_id_1 = Restaurant.find_by(name:"SeafoodRestaurant")
    menu_item_order = MenuItemOrder.new(menuitems_id: menu_item_1.id, restaurants_id: restaurant_id_1.id, quantity:1)
    assert menu_item_order.save
  end
end
