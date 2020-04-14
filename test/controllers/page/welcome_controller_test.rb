require 'test_helper'

class Page::WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get page_welcome_index_url
    assert_response :success
  end

end
