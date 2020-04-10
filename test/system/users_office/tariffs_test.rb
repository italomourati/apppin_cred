require "application_system_test_case"

class UsersOffice::TariffsTest < ApplicationSystemTestCase
  setup do
    @users_office_tariff = users_office_tariffs(:one)
  end

  test "visiting the index" do
    visit users_office_tariffs_url
    assert_selector "h1", text: "Users Office/Tariffs"
  end

  test "creating a Tariff" do
    visit users_office_tariffs_url
    click_on "New Users Office/Tariff"

    fill_in "Content", with: @users_office_tariff.content
    fill_in "Title", with: @users_office_tariff.title
    click_on "Create Tariff"

    assert_text "Tariff was successfully created"
    click_on "Back"
  end

  test "updating a Tariff" do
    visit users_office_tariffs_url
    click_on "Edit", match: :first

    fill_in "Content", with: @users_office_tariff.content
    fill_in "Title", with: @users_office_tariff.title
    click_on "Update Tariff"

    assert_text "Tariff was successfully updated"
    click_on "Back"
  end

  test "destroying a Tariff" do
    visit users_office_tariffs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tariff was successfully destroyed"
  end
end
