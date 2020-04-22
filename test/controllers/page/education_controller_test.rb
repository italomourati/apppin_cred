require 'test_helper'

class Page::EducationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get page_education_index_url
    assert_response :success
  end

end
