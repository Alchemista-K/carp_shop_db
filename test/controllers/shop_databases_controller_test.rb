require 'test_helper'

class ShopDatabasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shop_database = shop_databases(:one)
  end

  test "should get index" do
    get shop_databases_url
    assert_response :success
  end

  test "should get new" do
    get new_shop_database_url
    assert_response :success
  end

  test "should create shop_database" do
    assert_difference('ShopDatabase.count') do
      post shop_databases_url, params: { shop_database: { address: @shop_database.address, comment: @shop_database.comment, feature: @shop_database.feature, genre: @shop_database.genre, introduction: @shop_database.introduction, photo: @shop_database.photo, prefecture: @shop_database.prefecture, shop_name: @shop_database.shop_name, tel_number: @shop_database.tel_number } }
    end

    assert_redirected_to shop_database_url(ShopDatabase.last)
  end

  test "should show shop_database" do
    get shop_database_url(@shop_database)
    assert_response :success
  end

  test "should get edit" do
    get edit_shop_database_url(@shop_database)
    assert_response :success
  end

  test "should update shop_database" do
    patch shop_database_url(@shop_database), params: { shop_database: { address: @shop_database.address, comment: @shop_database.comment, feature: @shop_database.feature, genre: @shop_database.genre, introduction: @shop_database.introduction, photo: @shop_database.photo, prefecture: @shop_database.prefecture, shop_name: @shop_database.shop_name, tel_number: @shop_database.tel_number } }
    assert_redirected_to shop_database_url(@shop_database)
  end

  test "should destroy shop_database" do
    assert_difference('ShopDatabase.count', -1) do
      delete shop_database_url(@shop_database)
    end

    assert_redirected_to shop_databases_url
  end
end
