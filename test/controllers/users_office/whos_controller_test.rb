require 'test_helper'

class UsersOffice::WhosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_office_who = users_office_whos(:one)
  end

  test "should get index" do
    get users_office_whos_url
    assert_response :success
  end

  test "should get new" do
    get new_users_office_who_url
    assert_response :success
  end

  test "should create users_office_who" do
    assert_difference('UsersOffice::Who.count') do
      post users_office_whos_url, params: { users_office_who: { subtitle: @users_office_who.subtitle, title: @users_office_who.title } }
    end

    assert_redirected_to users_office_who_url(UsersOffice::Who.last)
  end

  test "should show users_office_who" do
    get users_office_who_url(@users_office_who)
    assert_response :success
  end

  test "should get edit" do
    get edit_users_office_who_url(@users_office_who)
    assert_response :success
  end

  test "should update users_office_who" do
    patch users_office_who_url(@users_office_who), params: { users_office_who: { subtitle: @users_office_who.subtitle, title: @users_office_who.title } }
    assert_redirected_to users_office_who_url(@users_office_who)
  end

  test "should destroy users_office_who" do
    assert_difference('UsersOffice::Who.count', -1) do
      delete users_office_who_url(@users_office_who)
    end

    assert_redirected_to users_office_whos_url
  end
end
