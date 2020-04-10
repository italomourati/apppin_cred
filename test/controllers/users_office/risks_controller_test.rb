require 'test_helper'

class UsersOffice::RisksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_office_risk = users_office_risks(:one)
  end

  test "should get index" do
    get users_office_risks_url
    assert_response :success
  end

  test "should get new" do
    get new_users_office_risk_url
    assert_response :success
  end

  test "should create users_office_risk" do
    assert_difference('UsersOffice::Risk.count') do
      post users_office_risks_url, params: { users_office_risk: { content: @users_office_risk.content, title: @users_office_risk.title } }
    end

    assert_redirected_to users_office_risk_url(UsersOffice::Risk.last)
  end

  test "should show users_office_risk" do
    get users_office_risk_url(@users_office_risk)
    assert_response :success
  end

  test "should get edit" do
    get edit_users_office_risk_url(@users_office_risk)
    assert_response :success
  end

  test "should update users_office_risk" do
    patch users_office_risk_url(@users_office_risk), params: { users_office_risk: { content: @users_office_risk.content, title: @users_office_risk.title } }
    assert_redirected_to users_office_risk_url(@users_office_risk)
  end

  test "should destroy users_office_risk" do
    assert_difference('UsersOffice::Risk.count', -1) do
      delete users_office_risk_url(@users_office_risk)
    end

    assert_redirected_to users_office_risks_url
  end
end
