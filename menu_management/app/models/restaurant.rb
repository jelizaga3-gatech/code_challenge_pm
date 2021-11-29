class Restaurant < ApplicationRecord
    has_many :menus, foreign_key: "title"
end
