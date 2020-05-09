require 'test_helper'

class UsersOffice::PrivaciesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_office_privacy = users_office_privacies(:one)
  end

  test "should get index" do
    get users_office_privacies_url
    assert_response :success
  end

  test "should get new" do
    get new_users_office_privacy_url
    assert_response :success
  end

  test "should create users_office_privacy" do
    assert_difference('UsersOffice::Privacy.count') do
      post users_office_privacies_url, params: { users_office_privacy: { content: @users_office_privacy.content, title: @users_office_privacy.title } }
    end

    assert_redirected_to users_office_privacy_url(UsersOffice::Privacy.last)
  end

  test "should show users_office_privacy" do
    get users_office_privacy_url(@users_office_privacy)
    assert_response :success
  end

  test "should get edit" do
    get edit_users_office_privacy_url(@users_office_privacy)
    assert_response :success
  end

  test "should update users_office_privacy" do
    patch users_office_privacy_url(@users_office_privacy), params: { users_office_privacy: { content: @users_office_privacy.content, title: @users_office_privacy.title } }
    assert_redirected_to users_office_privacy_url(@users_office_privacy)
  end

  test "should destroy users_office_privacy" do
    assert_difference('UsersOffice::Privacy.count', -1) do
      delete users_office_privacy_url(@users_office_privacy)
    end

    assert_redirected_to users_office_privacies_url
  end
end
