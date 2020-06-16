require 'test_helper'

class UsersOffice::FeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_office_fee = users_office_fees(:one)
  end

  test "should get index" do
    get users_office_fees_url
    assert_response :success
  end

  test "should get new" do
    get new_users_office_fee_url
    assert_response :success
  end

  test "should create users_office_fee" do
    assert_difference('UsersOffice::Fee.count') do
      post users_office_fees_url, params: { users_office_fee: { content: @users_office_fee.content } }
    end

    assert_redirected_to users_office_fee_url(UsersOffice::Fee.last)
  end

  test "should show users_office_fee" do
    get users_office_fee_url(@users_office_fee)
    assert_response :success
  end

  test "should get edit" do
    get edit_users_office_fee_url(@users_office_fee)
    assert_response :success
  end

  test "should update users_office_fee" do
    patch users_office_fee_url(@users_office_fee), params: { users_office_fee: { content: @users_office_fee.content } }
    assert_redirected_to users_office_fee_url(@users_office_fee)
  end

  test "should destroy users_office_fee" do
    assert_difference('UsersOffice::Fee.count', -1) do
      delete users_office_fee_url(@users_office_fee)
    end

    assert_redirected_to users_office_fees_url
  end
end
