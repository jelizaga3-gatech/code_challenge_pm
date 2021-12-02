class Menuitem < ApplicationRecord
  has_and_belongs_to_many :menus
  has_and_belongs_to_many :add_ons
  validates :price, presence: true

end
