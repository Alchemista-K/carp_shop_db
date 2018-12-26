class CreateShopDatabases < ActiveRecord::Migration[5.2]
  def change
    create_table :shop_databases do |t|
      t.string :shop_name
      t.text :introduction
      t.string :address
      t.string :tel_number
      t.string :genre
      t.string :feature
      t.string :photo
      t.text :comment

      t.timestamps
    end
  end
end
