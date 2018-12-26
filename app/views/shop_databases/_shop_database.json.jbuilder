json.extract! shop_database, :id, :shop_name, :introduction, :prefecture, :address, :tel_number, :genre, :feature, :photo, :comment, :created_at, :updated_at
json.url shop_database_url(shop_database, format: :json)
