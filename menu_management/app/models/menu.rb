class Menu < ApplicationRecord
    has_many :menuitems

    validates :title, presence: true
end
