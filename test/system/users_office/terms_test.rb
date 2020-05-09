require "application_system_test_case"

class UsersOffice::TermsTest < ApplicationSystemTestCase
  setup do
    @users_office_term = users_office_terms(:one)
  end

  test "visiting the index" do
    visit users_office_terms_url
    assert_selector "h1", text: "Users Office/Terms"
  end

  test "creating a Term" do
    visit users_office_terms_url
    click_on "New Users Office/Term"

    fill_in "Content", with: @users_office_term.content
    fill_in "Title", with: @users_office_term.title
    click_on "Create Term"

    assert_text "Term was successfully created"
    click_on "Back"
  end

  test "updating a Term" do
    visit users_office_terms_url
    click_on "Edit", match: :first

    fill_in "Content", with: @users_office_term.content
    fill_in "Title", with: @users_office_term.title
    click_on "Update Term"

    assert_text "Term was successfully updated"
    click_on "Back"
  end

  test "destroying a Term" do
    visit users_office_terms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Term was successfully destroyed"
  end
end
