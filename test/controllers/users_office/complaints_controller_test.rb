require 'test_helper'

class UsersOffice::ComplaintsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_office_complaint = users_office_complaints(:one)
  end

  test "should get index" do
    get users_office_complaints_url
    assert_response :success
  end

  test "should get new" do
    get new_users_office_complaint_url
    assert_response :success
  end

  test "should create users_office_complaint" do
    assert_difference('UsersOffice::Complaint.count') do
      post users_office_complaints_url, params: { users_office_complaint: { city: @users_office_complaint.city, content: @users_office_complaint.content, cpf: @users_office_complaint.cpf, description: @users_office_complaint.description, dtnascimento: @users_office_complaint.dtnascimento, email: @users_office_complaint.email, phone: @users_office_complaint.phone, state: @users_office_complaint.state, typecontact: @users_office_complaint.typecontact } }
    end

    assert_redirected_to users_office_complaint_url(UsersOffice::Complaint.last)
  end

  test "should show users_office_complaint" do
    get users_office_complaint_url(@users_office_complaint)
    assert_response :success
  end

  test "should get edit" do
    get edit_users_office_complaint_url(@users_office_complaint)
    assert_response :success
  end

  test "should update users_office_complaint" do
    patch users_office_complaint_url(@users_office_complaint), params: { users_office_complaint: { city: @users_office_complaint.city, content: @users_office_complaint.content, cpf: @users_office_complaint.cpf, description: @users_office_complaint.description, dtnascimento: @users_office_complaint.dtnascimento, email: @users_office_complaint.email, phone: @users_office_complaint.phone, state: @users_office_complaint.state, typecontact: @users_office_complaint.typecontact } }
    assert_redirected_to users_office_complaint_url(@users_office_complaint)
  end

  test "should destroy users_office_complaint" do
    assert_difference('UsersOffice::Complaint.count', -1) do
      delete users_office_complaint_url(@users_office_complaint)
    end

    assert_redirected_to users_office_complaints_url
  end
end
