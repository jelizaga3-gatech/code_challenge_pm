class RestaurantOrder < ApplicationRecord
    has_many  :menu_item_orders
    has_many :menuitems, through: :menu_item_orders
    belongs_to :diner
    belongs_to :restaurant
end
