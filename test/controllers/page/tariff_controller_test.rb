require 'test_helper'

class Page::TariffControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get page_tariff_index_url
    assert_response :success
  end

end
