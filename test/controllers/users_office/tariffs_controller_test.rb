require 'test_helper'

class UsersOffice::TariffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_office_tariff = users_office_tariffs(:one)
  end

  test "should get index" do
    get users_office_tariffs_url
    assert_response :success
  end

  test "should get new" do
    get new_users_office_tariff_url
    assert_response :success
  end

  test "should create users_office_tariff" do
    assert_difference('UsersOffice::Tariff.count') do
      post users_office_tariffs_url, params: { users_office_tariff: { content: @users_office_tariff.content, title: @users_office_tariff.title } }
    end

    assert_redirected_to users_office_tariff_url(UsersOffice::Tariff.last)
  end

  test "should show users_office_tariff" do
    get users_office_tariff_url(@users_office_tariff)
    assert_response :success
  end

  test "should get edit" do
    get edit_users_office_tariff_url(@users_office_tariff)
    assert_response :success
  end

  test "should update users_office_tariff" do
    patch users_office_tariff_url(@users_office_tariff), params: { users_office_tariff: { content: @users_office_tariff.content, title: @users_office_tariff.title } }
    assert_redirected_to users_office_tariff_url(@users_office_tariff)
  end

  test "should destroy users_office_tariff" do
    assert_difference('UsersOffice::Tariff.count', -1) do
      delete users_office_tariff_url(@users_office_tariff)
    end

    assert_redirected_to users_office_tariffs_url
  end
end
