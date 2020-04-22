require 'test_helper'

class Page::SocioControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get page_socio_index_url
    assert_response :success
  end

end
