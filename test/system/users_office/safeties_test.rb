require "application_system_test_case"

class UsersOffice::SafetiesTest < ApplicationSystemTestCase
  setup do
    @users_office_safety = users_office_safeties(:one)
  end

  test "visiting the index" do
    visit users_office_safeties_url
    assert_selector "h1", text: "Users Office/Safeties"
  end

  test "creating a Safety" do
    visit users_office_safeties_url
    click_on "New Users Office/Safety"

    fill_in "Content", with: @users_office_safety.content
    fill_in "Title", with: @users_office_safety.title
    click_on "Create Safety"

    assert_text "Safety was successfully created"
    click_on "Back"
  end

  test "updating a Safety" do
    visit users_office_safeties_url
    click_on "Edit", match: :first

    fill_in "Content", with: @users_office_safety.content
    fill_in "Title", with: @users_office_safety.title
    click_on "Update Safety"

    assert_text "Safety was successfully updated"
    click_on "Back"
  end

  test "destroying a Safety" do
    visit users_office_safeties_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Safety was successfully destroyed"
  end
end
