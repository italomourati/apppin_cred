require 'test_helper'

class UsersOffice::SafetiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_office_safety = users_office_safeties(:one)
  end

  test "should get index" do
    get users_office_safeties_url
    assert_response :success
  end

  test "should get new" do
    get new_users_office_safety_url
    assert_response :success
  end

  test "should create users_office_safety" do
    assert_difference('UsersOffice::Safety.count') do
      post users_office_safeties_url, params: { users_office_safety: { content: @users_office_safety.content, title: @users_office_safety.title } }
    end

    assert_redirected_to users_office_safety_url(UsersOffice::Safety.last)
  end

  test "should show users_office_safety" do
    get users_office_safety_url(@users_office_safety)
    assert_response :success
  end

  test "should get edit" do
    get edit_users_office_safety_url(@users_office_safety)
    assert_response :success
  end

  test "should update users_office_safety" do
    patch users_office_safety_url(@users_office_safety), params: { users_office_safety: { content: @users_office_safety.content, title: @users_office_safety.title } }
    assert_redirected_to users_office_safety_url(@users_office_safety)
  end

  test "should destroy users_office_safety" do
    assert_difference('UsersOffice::Safety.count', -1) do
      delete users_office_safety_url(@users_office_safety)
    end

    assert_redirected_to users_office_safeties_url
  end
end
