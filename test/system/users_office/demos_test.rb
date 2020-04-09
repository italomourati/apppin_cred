require "application_system_test_case"

class UsersOffice::DemosTest < ApplicationSystemTestCase
  setup do
    @users_office_demo = users_office_demos(:one)
  end

  test "visiting the index" do
    visit users_office_demos_url
    assert_selector "h1", text: "Users Office/Demos"
  end

  test "creating a Demo" do
    visit users_office_demos_url
    click_on "New Users Office/Demo"

    fill_in "Content", with: @users_office_demo.content
    fill_in "Title", with: @users_office_demo.title
    click_on "Create Demo"

    assert_text "Demo was successfully created"
    click_on "Back"
  end

  test "updating a Demo" do
    visit users_office_demos_url
    click_on "Edit", match: :first

    fill_in "Content", with: @users_office_demo.content
    fill_in "Title", with: @users_office_demo.title
    click_on "Update Demo"

    assert_text "Demo was successfully updated"
    click_on "Back"
  end

  test "destroying a Demo" do
    visit users_office_demos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Demo was successfully destroyed"
  end
end
