require 'test_helper'

class Page::CorrespodentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get page_correspodent_index_url
    assert_response :success
  end

end
