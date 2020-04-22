require 'test_helper'

class Page::DemoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get page_demo_index_url
    assert_response :success
  end

end
