require 'test_helper'

class Page::AcompCalcControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get page_acomp_calc_index_url
    assert_response :success
  end

end
