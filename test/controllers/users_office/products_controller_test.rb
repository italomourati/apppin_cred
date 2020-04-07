require 'test_helper'

class UsersOffice::ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_office_product = users_office_products(:one)
  end

  test "should get index" do
    get users_office_products_url
    assert_response :success
  end

  test "should get new" do
    get new_users_office_product_url
    assert_response :success
  end

  test "should create users_office_product" do
    assert_difference('UsersOffice::Product.count') do
      post users_office_products_url, params: { users_office_product: { subtitle: @users_office_product.subtitle, title: @users_office_product.title } }
    end

    assert_redirected_to users_office_product_url(UsersOffice::Product.last)
  end

  test "should show users_office_product" do
    get users_office_product_url(@users_office_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_users_office_product_url(@users_office_product)
    assert_response :success
  end

  test "should update users_office_product" do
    patch users_office_product_url(@users_office_product), params: { users_office_product: { subtitle: @users_office_product.subtitle, title: @users_office_product.title } }
    assert_redirected_to users_office_product_url(@users_office_product)
  end

  test "should destroy users_office_product" do
    assert_difference('UsersOffice::Product.count', -1) do
      delete users_office_product_url(@users_office_product)
    end

    assert_redirected_to users_office_products_url
  end
end
