class AddPrefectureCodeToShopDatabases < ActiveRecord::Migration[5.2]
  def change
    add_column :shop_databases, :prefecture_code, :integer
  end
end
