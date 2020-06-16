require "application_system_test_case"

class UsersOffice::FeesTest < ApplicationSystemTestCase
  setup do
    @users_office_fee = users_office_fees(:one)
  end

  test "visiting the index" do
    visit users_office_fees_url
    assert_selector "h1", text: "Users Office/Fees"
  end

  test "creating a Fee" do
    visit users_office_fees_url
    click_on "New Users Office/Fee"

    fill_in "Content", with: @users_office_fee.content
    click_on "Create Fee"

    assert_text "Fee was successfully created"
    click_on "Back"
  end

  test "updating a Fee" do
    visit users_office_fees_url
    click_on "Edit", match: :first

    fill_in "Content", with: @users_office_fee.content
    click_on "Update Fee"

    assert_text "Fee was successfully updated"
    click_on "Back"
  end

  test "destroying a Fee" do
    visit users_office_fees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fee was successfully destroyed"
  end
end
