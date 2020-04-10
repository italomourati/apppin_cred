require "application_system_test_case"

class UsersOffice::RepossibilitiesTest < ApplicationSystemTestCase
  setup do
    @users_office_repossibility = users_office_repossibilities(:one)
  end

  test "visiting the index" do
    visit users_office_repossibilities_url
    assert_selector "h1", text: "Users Office/Repossibilities"
  end

  test "creating a Repossibility" do
    visit users_office_repossibilities_url
    click_on "New Users Office/Repossibility"

    fill_in "Content", with: @users_office_repossibility.content
    fill_in "Title", with: @users_office_repossibility.title
    click_on "Create Repossibility"

    assert_text "Repossibility was successfully created"
    click_on "Back"
  end

  test "updating a Repossibility" do
    visit users_office_repossibilities_url
    click_on "Edit", match: :first

    fill_in "Content", with: @users_office_repossibility.content
    fill_in "Title", with: @users_office_repossibility.title
    click_on "Update Repossibility"

    assert_text "Repossibility was successfully updated"
    click_on "Back"
  end

  test "destroying a Repossibility" do
    visit users_office_repossibilities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Repossibility was successfully destroyed"
  end
end
