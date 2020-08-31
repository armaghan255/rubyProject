require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get title:string" do
    get pages_title:string_url
    assert_response :success
  end

end
