require "application_system_test_case"

class UsersOffice::ContactsTest < ApplicationSystemTestCase
  setup do
    @users_office_contact = users_office_contacts(:one)
  end

  test "visiting the index" do
    visit users_office_contacts_url
    assert_selector "h1", text: "Users Office/Contacts"
  end

  test "creating a Contact" do
    visit users_office_contacts_url
    click_on "New Users Office/Contact"

    fill_in "City", with: @users_office_contact.city
    fill_in "Content", with: @users_office_contact.content
    fill_in "Cpf", with: @users_office_contact.cpf
    fill_in "Description", with: @users_office_contact.description
    fill_in "Dtnascimento", with: @users_office_contact.dtnascimento
    fill_in "Email", with: @users_office_contact.email
    fill_in "Phone", with: @users_office_contact.phone
    fill_in "State", with: @users_office_contact.state
    fill_in "Typecontact", with: @users_office_contact.typecontact
    click_on "Create Contact"

    assert_text "Contact was successfully created"
    click_on "Back"
  end

  test "updating a Contact" do
    visit users_office_contacts_url
    click_on "Edit", match: :first

    fill_in "City", with: @users_office_contact.city
    fill_in "Content", with: @users_office_contact.content
    fill_in "Cpf", with: @users_office_contact.cpf
    fill_in "Description", with: @users_office_contact.description
    fill_in "Dtnascimento", with: @users_office_contact.dtnascimento
    fill_in "Email", with: @users_office_contact.email
    fill_in "Phone", with: @users_office_contact.phone
    fill_in "State", with: @users_office_contact.state
    fill_in "Typecontact", with: @users_office_contact.typecontact
    click_on "Update Contact"

    assert_text "Contact was successfully updated"
    click_on "Back"
  end

  test "destroying a Contact" do
    visit users_office_contacts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contact was successfully destroyed"
  end
end
