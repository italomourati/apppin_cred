require 'test_helper'

class UsersOffice::WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_office_welcome_index_url
    assert_response :success
  end

end
