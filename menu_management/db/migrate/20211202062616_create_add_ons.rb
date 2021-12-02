class CreateAddOns < ActiveRecord::Migration[6.1]
  def change
    create_table :add_ons do |t|
      t.string :name

      t.timestamps
    end


    create_join_table :add_ons, :menuitems, id: false do |t|
      t.index [:add_on_id, :menuitem_id]
      t.index [:menuitem_id, :add_on_id]
    end
  end
end
