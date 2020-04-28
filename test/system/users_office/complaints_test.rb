require "application_system_test_case"

class UsersOffice::ComplaintsTest < ApplicationSystemTestCase
  setup do
    @users_office_complaint = users_office_complaints(:one)
  end

  test "visiting the index" do
    visit users_office_complaints_url
    assert_selector "h1", text: "Users Office/Complaints"
  end

  test "creating a Complaint" do
    visit users_office_complaints_url
    click_on "New Users Office/Complaint"

    fill_in "City", with: @users_office_complaint.city
    fill_in "Content", with: @users_office_complaint.content
    fill_in "Cpf", with: @users_office_complaint.cpf
    fill_in "Description", with: @users_office_complaint.description
    fill_in "Dtnascimento", with: @users_office_complaint.dtnascimento
    fill_in "Email", with: @users_office_complaint.email
    fill_in "Phone", with: @users_office_complaint.phone
    fill_in "State", with: @users_office_complaint.state
    fill_in "Typecontact", with: @users_office_complaint.typecontact
    click_on "Create Complaint"

    assert_text "Complaint was successfully created"
    click_on "Back"
  end

  test "updating a Complaint" do
    visit users_office_complaints_url
    click_on "Edit", match: :first

    fill_in "City", with: @users_office_complaint.city
    fill_in "Content", with: @users_office_complaint.content
    fill_in "Cpf", with: @users_office_complaint.cpf
    fill_in "Description", with: @users_office_complaint.description
    fill_in "Dtnascimento", with: @users_office_complaint.dtnascimento
    fill_in "Email", with: @users_office_complaint.email
    fill_in "Phone", with: @users_office_complaint.phone
    fill_in "State", with: @users_office_complaint.state
    fill_in "Typecontact", with: @users_office_complaint.typecontact
    click_on "Update Complaint"

    assert_text "Complaint was successfully updated"
    click_on "Back"
  end

  test "destroying a Complaint" do
    visit users_office_complaints_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Complaint was successfully destroyed"
  end
end
