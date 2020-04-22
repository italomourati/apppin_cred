require 'test_helper'

class Page::CreditControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get page_credit_index_url
    assert_response :success
  end

end
