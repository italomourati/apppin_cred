require 'test_helper'

class UsersOffice::DemosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_office_demo = users_office_demos(:one)
  end

  test "should get index" do
    get users_office_demos_url
    assert_response :success
  end

  test "should get new" do
    get new_users_office_demo_url
    assert_response :success
  end

  test "should create users_office_demo" do
    assert_difference('UsersOffice::Demo.count') do
      post users_office_demos_url, params: { users_office_demo: { content: @users_office_demo.content, title: @users_office_demo.title } }
    end

    assert_redirected_to users_office_demo_url(UsersOffice::Demo.last)
  end

  test "should show users_office_demo" do
    get users_office_demo_url(@users_office_demo)
    assert_response :success
  end

  test "should get edit" do
    get edit_users_office_demo_url(@users_office_demo)
    assert_response :success
  end

  test "should update users_office_demo" do
    patch users_office_demo_url(@users_office_demo), params: { users_office_demo: { content: @users_office_demo.content, title: @users_office_demo.title } }
    assert_redirected_to users_office_demo_url(@users_office_demo)
  end

  test "should destroy users_office_demo" do
    assert_difference('UsersOffice::Demo.count', -1) do
      delete users_office_demo_url(@users_office_demo)
    end

    assert_redirected_to users_office_demos_url
  end
end
