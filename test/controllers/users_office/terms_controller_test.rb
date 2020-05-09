require 'test_helper'

class UsersOffice::TermsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_office_term = users_office_terms(:one)
  end

  test "should get index" do
    get users_office_terms_url
    assert_response :success
  end

  test "should get new" do
    get new_users_office_term_url
    assert_response :success
  end

  test "should create users_office_term" do
    assert_difference('UsersOffice::Term.count') do
      post users_office_terms_url, params: { users_office_term: { content: @users_office_term.content, title: @users_office_term.title } }
    end

    assert_redirected_to users_office_term_url(UsersOffice::Term.last)
  end

  test "should show users_office_term" do
    get users_office_term_url(@users_office_term)
    assert_response :success
  end

  test "should get edit" do
    get edit_users_office_term_url(@users_office_term)
    assert_response :success
  end

  test "should update users_office_term" do
    patch users_office_term_url(@users_office_term), params: { users_office_term: { content: @users_office_term.content, title: @users_office_term.title } }
    assert_redirected_to users_office_term_url(@users_office_term)
  end

  test "should destroy users_office_term" do
    assert_difference('UsersOffice::Term.count', -1) do
      delete users_office_term_url(@users_office_term)
    end

    assert_redirected_to users_office_terms_url
  end
end
