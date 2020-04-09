require 'test_helper'

class UsersOffice::CorrespondetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_office_correspondet = users_office_correspondets(:one)
  end

  test "should get index" do
    get users_office_correspondets_url
    assert_response :success
  end

  test "should get new" do
    get new_users_office_correspondet_url
    assert_response :success
  end

  test "should create users_office_correspondet" do
    assert_difference('UsersOffice::Correspondet.count') do
      post users_office_correspondets_url, params: { users_office_correspondet: { content: @users_office_correspondet.content, title: @users_office_correspondet.title } }
    end

    assert_redirected_to users_office_correspondet_url(UsersOffice::Correspondet.last)
  end

  test "should show users_office_correspondet" do
    get users_office_correspondet_url(@users_office_correspondet)
    assert_response :success
  end

  test "should get edit" do
    get edit_users_office_correspondet_url(@users_office_correspondet)
    assert_response :success
  end

  test "should update users_office_correspondet" do
    patch users_office_correspondet_url(@users_office_correspondet), params: { users_office_correspondet: { content: @users_office_correspondet.content, title: @users_office_correspondet.title } }
    assert_redirected_to users_office_correspondet_url(@users_office_correspondet)
  end

  test "should destroy users_office_correspondet" do
    assert_difference('UsersOffice::Correspondet.count', -1) do
      delete users_office_correspondet_url(@users_office_correspondet)
    end

    assert_redirected_to users_office_correspondets_url
  end
end
