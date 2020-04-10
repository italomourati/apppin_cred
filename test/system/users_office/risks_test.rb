require "application_system_test_case"

class UsersOffice::RisksTest < ApplicationSystemTestCase
  setup do
    @users_office_risk = users_office_risks(:one)
  end

  test "visiting the index" do
    visit users_office_risks_url
    assert_selector "h1", text: "Users Office/Risks"
  end

  test "creating a Risk" do
    visit users_office_risks_url
    click_on "New Users Office/Risk"

    fill_in "Content", with: @users_office_risk.content
    fill_in "Title", with: @users_office_risk.title
    click_on "Create Risk"

    assert_text "Risk was successfully created"
    click_on "Back"
  end

  test "updating a Risk" do
    visit users_office_risks_url
    click_on "Edit", match: :first

    fill_in "Content", with: @users_office_risk.content
    fill_in "Title", with: @users_office_risk.title
    click_on "Update Risk"

    assert_text "Risk was successfully updated"
    click_on "Back"
  end

  test "destroying a Risk" do
    visit users_office_risks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Risk was successfully destroyed"
  end
end
