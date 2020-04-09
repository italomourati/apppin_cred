require 'test_helper'

class UsersOffice::EducationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_office_education = users_office_educations(:one)
  end

  test "should get index" do
    get users_office_educations_url
    assert_response :success
  end

  test "should get new" do
    get new_users_office_education_url
    assert_response :success
  end

  test "should create users_office_education" do
    assert_difference('UsersOffice::Education.count') do
      post users_office_educations_url, params: { users_office_education: { content: @users_office_education.content, title: @users_office_education.title } }
    end

    assert_redirected_to users_office_education_url(UsersOffice::Education.last)
  end

  test "should show users_office_education" do
    get users_office_education_url(@users_office_education)
    assert_response :success
  end

  test "should get edit" do
    get edit_users_office_education_url(@users_office_education)
    assert_response :success
  end

  test "should update users_office_education" do
    patch users_office_education_url(@users_office_education), params: { users_office_education: { content: @users_office_education.content, title: @users_office_education.title } }
    assert_redirected_to users_office_education_url(@users_office_education)
  end

  test "should destroy users_office_education" do
    assert_difference('UsersOffice::Education.count', -1) do
      delete users_office_education_url(@users_office_education)
    end

    assert_redirected_to users_office_educations_url
  end
end
