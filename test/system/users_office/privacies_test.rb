require "application_system_test_case"

class UsersOffice::PrivaciesTest < ApplicationSystemTestCase
  setup do
    @users_office_privacy = users_office_privacies(:one)
  end

  test "visiting the index" do
    visit users_office_privacies_url
    assert_selector "h1", text: "Users Office/Privacies"
  end

  test "creating a Privacy" do
    visit users_office_privacies_url
    click_on "New Users Office/Privacy"

    fill_in "Content", with: @users_office_privacy.content
    fill_in "Title", with: @users_office_privacy.title
    click_on "Create Privacy"

    assert_text "Privacy was successfully created"
    click_on "Back"
  end

  test "updating a Privacy" do
    visit users_office_privacies_url
    click_on "Edit", match: :first

    fill_in "Content", with: @users_office_privacy.content
    fill_in "Title", with: @users_office_privacy.title
    click_on "Update Privacy"

    assert_text "Privacy was successfully updated"
    click_on "Back"
  end

  test "destroying a Privacy" do
    visit users_office_privacies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Privacy was successfully destroyed"
  end
end
