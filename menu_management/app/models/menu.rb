class Menu < ApplicationRecord
    has_and_belongs_to_many :menuitems
    belongs_to :restaurant, optional: true
    validates :title, presence: true
end
