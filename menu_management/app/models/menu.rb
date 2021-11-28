class Menu < ApplicationRecord
    has_and_belongs_to_many :menuitems

    validates :title, presence: true
end
