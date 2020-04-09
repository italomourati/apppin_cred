require "application_system_test_case"

class UsersOffice::EducationsTest < ApplicationSystemTestCase
  setup do
    @users_office_education = users_office_educations(:one)
  end

  test "visiting the index" do
    visit users_office_educations_url
    assert_selector "h1", text: "Users Office/Educations"
  end

  test "creating a Education" do
    visit users_office_educations_url
    click_on "New Users Office/Education"

    fill_in "Content", with: @users_office_education.content
    fill_in "Title", with: @users_office_education.title
    click_on "Create Education"

    assert_text "Education was successfully created"
    click_on "Back"
  end

  test "updating a Education" do
    visit users_office_educations_url
    click_on "Edit", match: :first

    fill_in "Content", with: @users_office_education.content
    fill_in "Title", with: @users_office_education.title
    click_on "Update Education"

    assert_text "Education was successfully updated"
    click_on "Back"
  end

  test "destroying a Education" do
    visit users_office_educations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Education was successfully destroyed"
  end
end
