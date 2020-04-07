require "application_system_test_case"

class UsersOffice::ImagesTest < ApplicationSystemTestCase
  setup do
    @users_office_image = users_office_images(:one)
  end

  test "visiting the index" do
    visit users_office_images_url
    assert_selector "h1", text: "Users Office/Images"
  end

  test "creating a Image" do
    visit users_office_images_url
    click_on "New Users Office/Image"

    fill_in "Content", with: @users_office_image.content
    fill_in "Content one", with: @users_office_image.content_one
    fill_in "Content two", with: @users_office_image.content_two
    fill_in "Subtitle", with: @users_office_image.subtitle
    fill_in "Title", with: @users_office_image.title
    click_on "Create Image"

    assert_text "Image was successfully created"
    click_on "Back"
  end

  test "updating a Image" do
    visit users_office_images_url
    click_on "Edit", match: :first

    fill_in "Content", with: @users_office_image.content
    fill_in "Content one", with: @users_office_image.content_one
    fill_in "Content two", with: @users_office_image.content_two
    fill_in "Subtitle", with: @users_office_image.subtitle
    fill_in "Title", with: @users_office_image.title
    click_on "Update Image"

    assert_text "Image was successfully updated"
    click_on "Back"
  end

  test "destroying a Image" do
    visit users_office_images_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Image was successfully destroyed"
  end
end
