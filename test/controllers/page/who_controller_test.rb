require 'test_helper'

class Page::WhoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get page_who_index_url
    assert_response :success
  end

end
