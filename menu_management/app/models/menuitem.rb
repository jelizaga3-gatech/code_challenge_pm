class Menuitem < ApplicationRecord
  has_and_belongs_to_many :menus

  validates :price, presence: true

end
