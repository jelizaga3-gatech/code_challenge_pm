class Diner < ApplicationRecord
    has_many :restaurant_orders

    validates :first_name, presence: true
end
