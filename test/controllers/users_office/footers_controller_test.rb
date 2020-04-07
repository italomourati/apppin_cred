require 'test_helper'

class UsersOffice::FootersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_office_footer = users_office_footers(:one)
  end

  test "should get index" do
    get users_office_footers_url
    assert_response :success
  end

  test "should get new" do
    get new_users_office_footer_url
    assert_response :success
  end

  test "should create users_office_footer" do
    assert_difference('UsersOffice::Footer.count') do
      post users_office_footers_url, params: { users_office_footer: { email: @users_office_footer.email, phone_one: @users_office_footer.phone_one, phone_two: @users_office_footer.phone_two, subtitle: @users_office_footer.subtitle, title: @users_office_footer.title } }
    end

    assert_redirected_to users_office_footer_url(UsersOffice::Footer.last)
  end

  test "should show users_office_footer" do
    get users_office_footer_url(@users_office_footer)
    assert_response :success
  end

  test "should get edit" do
    get edit_users_office_footer_url(@users_office_footer)
    assert_response :success
  end

  test "should update users_office_footer" do
    patch users_office_footer_url(@users_office_footer), params: { users_office_footer: { email: @users_office_footer.email, phone_one: @users_office_footer.phone_one, phone_two: @users_office_footer.phone_two, subtitle: @users_office_footer.subtitle, title: @users_office_footer.title } }
    assert_redirected_to users_office_footer_url(@users_office_footer)
  end

  test "should destroy users_office_footer" do
    assert_difference('UsersOffice::Footer.count', -1) do
      delete users_office_footer_url(@users_office_footer)
    end

    assert_redirected_to users_office_footers_url
  end
end
