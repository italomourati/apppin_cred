require "application_system_test_case"

class UsersOffice::ProductsTest < ApplicationSystemTestCase
  setup do
    @users_office_product = users_office_products(:one)
  end

  test "visiting the index" do
    visit users_office_products_url
    assert_selector "h1", text: "Users Office/Products"
  end

  test "creating a Product" do
    visit users_office_products_url
    click_on "New Users Office/Product"

    fill_in "Subtitle", with: @users_office_product.subtitle
    fill_in "Title", with: @users_office_product.title
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "updating a Product" do
    visit users_office_products_url
    click_on "Edit", match: :first

    fill_in "Subtitle", with: @users_office_product.subtitle
    fill_in "Title", with: @users_office_product.title
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "destroying a Product" do
    visit users_office_products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product was successfully destroyed"
  end
end
