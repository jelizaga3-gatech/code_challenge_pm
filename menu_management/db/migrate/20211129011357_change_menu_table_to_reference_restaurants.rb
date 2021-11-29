class ChangeMenuTableToReferenceRestaurants < ActiveRecord::Migration[6.1]
  def change
    change_table :menus do |t|
      t.references :restaurants, null: true, foreign_key: true
    end
  end
end
