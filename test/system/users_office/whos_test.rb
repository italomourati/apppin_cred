require "application_system_test_case"

class UsersOffice::WhosTest < ApplicationSystemTestCase
  setup do
    @users_office_who = users_office_whos(:one)
  end

  test "visiting the index" do
    visit users_office_whos_url
    assert_selector "h1", text: "Users Office/Whos"
  end

  test "creating a Who" do
    visit users_office_whos_url
    click_on "New Users Office/Who"

    fill_in "Subtitle", with: @users_office_who.subtitle
    fill_in "Title", with: @users_office_who.title
    click_on "Create Who"

    assert_text "Who was successfully created"
    click_on "Back"
  end

  test "updating a Who" do
    visit users_office_whos_url
    click_on "Edit", match: :first

    fill_in "Subtitle", with: @users_office_who.subtitle
    fill_in "Title", with: @users_office_who.title
    click_on "Update Who"

    assert_text "Who was successfully updated"
    click_on "Back"
  end

  test "destroying a Who" do
    visit users_office_whos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Who was successfully destroyed"
  end
end
