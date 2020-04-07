require 'test_helper'

class UsersOffice::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_office_users_index_url
    assert_response :success
  end

end
