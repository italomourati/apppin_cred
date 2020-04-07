require 'test_helper'

class UsersOffice::ImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_office_image = users_office_images(:one)
  end

  test "should get index" do
    get users_office_images_url
    assert_response :success
  end

  test "should get new" do
    get new_users_office_image_url
    assert_response :success
  end

  test "should create users_office_image" do
    assert_difference('UsersOffice::Image.count') do
      post users_office_images_url, params: { users_office_image: { content: @users_office_image.content, content_one: @users_office_image.content_one, content_two: @users_office_image.content_two, subtitle: @users_office_image.subtitle, title: @users_office_image.title } }
    end

    assert_redirected_to users_office_image_url(UsersOffice::Image.last)
  end

  test "should show users_office_image" do
    get users_office_image_url(@users_office_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_users_office_image_url(@users_office_image)
    assert_response :success
  end

  test "should update users_office_image" do
    patch users_office_image_url(@users_office_image), params: { users_office_image: { content: @users_office_image.content, content_one: @users_office_image.content_one, content_two: @users_office_image.content_two, subtitle: @users_office_image.subtitle, title: @users_office_image.title } }
    assert_redirected_to users_office_image_url(@users_office_image)
  end

  test "should destroy users_office_image" do
    assert_difference('UsersOffice::Image.count', -1) do
      delete users_office_image_url(@users_office_image)
    end

    assert_redirected_to users_office_images_url
  end
end
