require 'test_helper'

class UsersOffice::RepossibilitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_office_repossibility = users_office_repossibilities(:one)
  end

  test "should get index" do
    get users_office_repossibilities_url
    assert_response :success
  end

  test "should get new" do
    get new_users_office_repossibility_url
    assert_response :success
  end

  test "should create users_office_repossibility" do
    assert_difference('UsersOffice::Repossibility.count') do
      post users_office_repossibilities_url, params: { users_office_repossibility: { content: @users_office_repossibility.content, title: @users_office_repossibility.title } }
    end

    assert_redirected_to users_office_repossibility_url(UsersOffice::Repossibility.last)
  end

  test "should show users_office_repossibility" do
    get users_office_repossibility_url(@users_office_repossibility)
    assert_response :success
  end

  test "should get edit" do
    get edit_users_office_repossibility_url(@users_office_repossibility)
    assert_response :success
  end

  test "should update users_office_repossibility" do
    patch users_office_repossibility_url(@users_office_repossibility), params: { users_office_repossibility: { content: @users_office_repossibility.content, title: @users_office_repossibility.title } }
    assert_redirected_to users_office_repossibility_url(@users_office_repossibility)
  end

  test "should destroy users_office_repossibility" do
    assert_difference('UsersOffice::Repossibility.count', -1) do
      delete users_office_repossibility_url(@users_office_repossibility)
    end

    assert_redirected_to users_office_repossibilities_url
  end
end
