require 'test_helper'

class UsersOffice::ContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_office_contact = users_office_contacts(:one)
  end

  test "should get index" do
    get users_office_contacts_url
    assert_response :success
  end

  test "should get new" do
    get new_users_office_contact_url
    assert_response :success
  end

  test "should create users_office_contact" do
    assert_difference('UsersOffice::Contact.count') do
      post users_office_contacts_url, params: { users_office_contact: { city: @users_office_contact.city, content: @users_office_contact.content, cpf: @users_office_contact.cpf, description: @users_office_contact.description, dtnascimento: @users_office_contact.dtnascimento, email: @users_office_contact.email, phone: @users_office_contact.phone, state: @users_office_contact.state, typecontact: @users_office_contact.typecontact } }
    end

    assert_redirected_to users_office_contact_url(UsersOffice::Contact.last)
  end

  test "should show users_office_contact" do
    get users_office_contact_url(@users_office_contact)
    assert_response :success
  end

  test "should get edit" do
    get edit_users_office_contact_url(@users_office_contact)
    assert_response :success
  end

  test "should update users_office_contact" do
    patch users_office_contact_url(@users_office_contact), params: { users_office_contact: { city: @users_office_contact.city, content: @users_office_contact.content, cpf: @users_office_contact.cpf, description: @users_office_contact.description, dtnascimento: @users_office_contact.dtnascimento, email: @users_office_contact.email, phone: @users_office_contact.phone, state: @users_office_contact.state, typecontact: @users_office_contact.typecontact } }
    assert_redirected_to users_office_contact_url(@users_office_contact)
  end

  test "should destroy users_office_contact" do
    assert_difference('UsersOffice::Contact.count', -1) do
      delete users_office_contact_url(@users_office_contact)
    end

    assert_redirected_to users_office_contacts_url
  end
end
