class AddTypeToMenu < ActiveRecord::Migration[6.1]
  def change
    change_table :menus do |t|
      t.string :category
    end
  end
end
