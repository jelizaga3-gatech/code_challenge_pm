class Menuitem < ApplicationRecord
  has_and_belongs_to_many :menus
  has_and_belongs_to_many :add_ons
  has_many :restaurant_orders
  has_many :menu_item_orders
  validates :price, presence: true

end
