require 'test_helper'

class Page::StandbyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get page_standby_index_url
    assert_response :success
  end

end
