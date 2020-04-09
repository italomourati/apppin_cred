require "application_system_test_case"

class UsersOffice::CorrespondetsTest < ApplicationSystemTestCase
  setup do
    @users_office_correspondet = users_office_correspondets(:one)
  end

  test "visiting the index" do
    visit users_office_correspondets_url
    assert_selector "h1", text: "Users Office/Correspondets"
  end

  test "creating a Correspondet" do
    visit users_office_correspondets_url
    click_on "New Users Office/Correspondet"

    fill_in "Content", with: @users_office_correspondet.content
    fill_in "Title", with: @users_office_correspondet.title
    click_on "Create Correspondet"

    assert_text "Correspondet was successfully created"
    click_on "Back"
  end

  test "updating a Correspondet" do
    visit users_office_correspondets_url
    click_on "Edit", match: :first

    fill_in "Content", with: @users_office_correspondet.content
    fill_in "Title", with: @users_office_correspondet.title
    click_on "Update Correspondet"

    assert_text "Correspondet was successfully updated"
    click_on "Back"
  end

  test "destroying a Correspondet" do
    visit users_office_correspondets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Correspondet was successfully destroyed"
  end
end
