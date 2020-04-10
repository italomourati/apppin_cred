require "application_system_test_case"

class UsersOffice::CreditsTest < ApplicationSystemTestCase
  setup do
    @users_office_credit = users_office_credits(:one)
  end

  test "visiting the index" do
    visit users_office_credits_url
    assert_selector "h1", text: "Users Office/Credits"
  end

  test "creating a Credit" do
    visit users_office_credits_url
    click_on "New Users Office/Credit"

    fill_in "Content", with: @users_office_credit.content
    fill_in "Title", with: @users_office_credit.title
    click_on "Create Credit"

    assert_text "Credit was successfully created"
    click_on "Back"
  end

  test "updating a Credit" do
    visit users_office_credits_url
    click_on "Edit", match: :first

    fill_in "Content", with: @users_office_credit.content
    fill_in "Title", with: @users_office_credit.title
    click_on "Update Credit"

    assert_text "Credit was successfully updated"
    click_on "Back"
  end

  test "destroying a Credit" do
    visit users_office_credits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Credit was successfully destroyed"
  end
end
