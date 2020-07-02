require 'test_helper'

class Page::CalcControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get page_calc_index_url
    assert_response :success
  end

end
