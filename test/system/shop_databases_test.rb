require "application_system_test_case"

class ShopDatabasesTest < ApplicationSystemTestCase
  setup do
    @shop_database = shop_databases(:one)
  end

  test "visiting the index" do
    visit shop_databases_url
    assert_selector "h1", text: "Shop Databases"
  end

  test "creating a Shop database" do
    visit shop_databases_url
    click_on "New Shop Database"

    fill_in "Address", with: @shop_database.address
    fill_in "Comment", with: @shop_database.comment
    fill_in "Feature", with: @shop_database.feature
    fill_in "Genre", with: @shop_database.genre
    fill_in "Introduction", with: @shop_database.introduction
    fill_in "Photo", with: @shop_database.photo
    fill_in "Prefecture", with: @shop_database.prefecture
    fill_in "Shop Name", with: @shop_database.shop_name
    fill_in "Tel Number", with: @shop_database.tel_number
    click_on "Create Shop database"

    assert_text "Shop database was successfully created"
    click_on "Back"
  end

  test "updating a Shop database" do
    visit shop_databases_url
    click_on "Edit", match: :first

    fill_in "Address", with: @shop_database.address
    fill_in "Comment", with: @shop_database.comment
    fill_in "Feature", with: @shop_database.feature
    fill_in "Genre", with: @shop_database.genre
    fill_in "Introduction", with: @shop_database.introduction
    fill_in "Photo", with: @shop_database.photo
    fill_in "Prefecture", with: @shop_database.prefecture
    fill_in "Shop Name", with: @shop_database.shop_name
    fill_in "Tel Number", with: @shop_database.tel_number
    click_on "Update Shop database"

    assert_text "Shop database was successfully updated"
    click_on "Back"
  end

  test "destroying a Shop database" do
    visit shop_databases_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shop database was successfully destroyed"
  end
end
