require 'test_helper'

class UsersOffice::CreditsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_office_credit = users_office_credits(:one)
  end

  test "should get index" do
    get users_office_credits_url
    assert_response :success
  end

  test "should get new" do
    get new_users_office_credit_url
    assert_response :success
  end

  test "should create users_office_credit" do
    assert_difference('UsersOffice::Credit.count') do
      post users_office_credits_url, params: { users_office_credit: { content: @users_office_credit.content, title: @users_office_credit.title } }
    end

    assert_redirected_to users_office_credit_url(UsersOffice::Credit.last)
  end

  test "should show users_office_credit" do
    get users_office_credit_url(@users_office_credit)
    assert_response :success
  end

  test "should get edit" do
    get edit_users_office_credit_url(@users_office_credit)
    assert_response :success
  end

  test "should update users_office_credit" do
    patch users_office_credit_url(@users_office_credit), params: { users_office_credit: { content: @users_office_credit.content, title: @users_office_credit.title } }
    assert_redirected_to users_office_credit_url(@users_office_credit)
  end

  test "should destroy users_office_credit" do
    assert_difference('UsersOffice::Credit.count', -1) do
      delete users_office_credit_url(@users_office_credit)
    end

    assert_redirected_to users_office_credits_url
  end
end
