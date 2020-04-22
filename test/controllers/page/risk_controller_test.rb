require 'test_helper'

class Page::RiskControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get page_risk_index_url
    assert_response :success
  end

end
