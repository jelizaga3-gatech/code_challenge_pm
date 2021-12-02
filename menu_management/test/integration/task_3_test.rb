require "test_helper"

class Task3Test < ActiveSupport::TestCase
  test "Diner orders salad as standalone dish with selection of dressing" do
    diner = Diner.new(first_name:"MyName")
    diner.save
    restaurant = Restaurant.find_by(name:"SeafoodRestaurant")
    dressing = AddOn.find_by(name:"RanchDressing")
    order = RestaurantOrder.new(restaurant_id: restaurant.id, diner_id: diner.id)
    order.save
    salad = Menuitem.new(title:"Salad Entree",  price:10.00, add_ons:[dressing])
    diner.restaurant_orders = [order]
    assert diner.save
  end


  test "Diner orders salad as a side with selection of dressing" do
    diner = Diner.new(first_name:"MyName")
    diner.save
    restaurant = Restaurant.find_by(name:"SeafoodRestaurant")
    dressing = AddOn.find_by(name:"RanchDressing")
    order = RestaurantOrder.new(restaurant_id: restaurant.id, diner_id: diner.id)
    order.save
    salad = Menuitem.new(title:"Side dish",  price:10.00, add_ons:[dressing])
    diner.restaurant_orders = [order]
    assert diner.save
  end

  test "Diner orders an appetizer or entree with a side of dressing" do
    diner = Diner.new(first_name:"MyName")
    diner.save
    restaurant = Restaurant.find_by(name:"SeafoodRestaurant")
    dressing = AddOn.find_by(name:"RanchDressing")
    order = RestaurantOrder.new(restaurant_id: restaurant.id, diner_id: diner.id)
    order.save
    salad = Menuitem.new(title:"Appetizer dish",  price:10.00, add_ons:[dressing])
    diner.restaurant_orders = [order]
    assert diner.save
  end
end
