class AddUserIdToShopDatabases < ActiveRecord::Migration[5.2]
  def change
    add_column :shop_databases, :user_id, :integer
  end
end
