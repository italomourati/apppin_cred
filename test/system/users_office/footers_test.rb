require "application_system_test_case"

class UsersOffice::FootersTest < ApplicationSystemTestCase
  setup do
    @users_office_footer = users_office_footers(:one)
  end

  test "visiting the index" do
    visit users_office_footers_url
    assert_selector "h1", text: "Users Office/Footers"
  end

  test "creating a Footer" do
    visit users_office_footers_url
    click_on "New Users Office/Footer"

    fill_in "Email", with: @users_office_footer.email
    fill_in "Phone one", with: @users_office_footer.phone_one
    fill_in "Phone two", with: @users_office_footer.phone_two
    fill_in "Subtitle", with: @users_office_footer.subtitle
    fill_in "Title", with: @users_office_footer.title
    click_on "Create Footer"

    assert_text "Footer was successfully created"
    click_on "Back"
  end

  test "updating a Footer" do
    visit users_office_footers_url
    click_on "Edit", match: :first

    fill_in "Email", with: @users_office_footer.email
    fill_in "Phone one", with: @users_office_footer.phone_one
    fill_in "Phone two", with: @users_office_footer.phone_two
    fill_in "Subtitle", with: @users_office_footer.subtitle
    fill_in "Title", with: @users_office_footer.title
    click_on "Update Footer"

    assert_text "Footer was successfully updated"
    click_on "Back"
  end

  test "destroying a Footer" do
    visit users_office_footers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Footer was successfully destroyed"
  end
end
