require 'test_helper'

class UsersOffice::CallsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_office_call = users_office_calls(:one)
  end

  test "should get index" do
    get users_office_calls_url
    assert_response :success
  end

  test "should get new" do
    get new_users_office_call_url
    assert_response :success
  end

  test "should create users_office_call" do
    assert_difference('UsersOffice::Call.count') do
      post users_office_calls_url, params: { users_office_call: { content: @users_office_call.content, title: @users_office_call.title } }
    end

    assert_redirected_to users_office_call_url(UsersOffice::Call.last)
  end

  test "should show users_office_call" do
    get users_office_call_url(@users_office_call)
    assert_response :success
  end

  test "should get edit" do
    get edit_users_office_call_url(@users_office_call)
    assert_response :success
  end

  test "should update users_office_call" do
    patch users_office_call_url(@users_office_call), params: { users_office_call: { content: @users_office_call.content, title: @users_office_call.title } }
    assert_redirected_to users_office_call_url(@users_office_call)
  end

  test "should destroy users_office_call" do
    assert_difference('UsersOffice::Call.count', -1) do
      delete users_office_call_url(@users_office_call)
    end

    assert_redirected_to users_office_calls_url
  end
end
