class CreateMenuitems < ActiveRecord::Migration[6.1]
  def change
    create_table :menuitems do |t|
      t.string :title
      t.text :body
      t.references :menu, null: false, foreign_key: true

      t.timestamps
    end
  end
end
