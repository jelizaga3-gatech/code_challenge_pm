class RestaurantOrder < ApplicationRecord
    has_many :menu_items, through: :menu_item_orders
    belongs_to :diner
    belongs_to :restaurant
end
