require "application_system_test_case"

class UsersOffice::CallsTest < ApplicationSystemTestCase
  setup do
    @users_office_call = users_office_calls(:one)
  end

  test "visiting the index" do
    visit users_office_calls_url
    assert_selector "h1", text: "Users Office/Calls"
  end

  test "creating a Call" do
    visit users_office_calls_url
    click_on "New Users Office/Call"

    fill_in "Content", with: @users_office_call.content
    fill_in "Title", with: @users_office_call.title
    click_on "Create Call"

    assert_text "Call was successfully created"
    click_on "Back"
  end

  test "updating a Call" do
    visit users_office_calls_url
    click_on "Edit", match: :first

    fill_in "Content", with: @users_office_call.content
    fill_in "Title", with: @users_office_call.title
    click_on "Update Call"

    assert_text "Call was successfully updated"
    click_on "Back"
  end

  test "destroying a Call" do
    visit users_office_calls_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Call was successfully destroyed"
  end
end
