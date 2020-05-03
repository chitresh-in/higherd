require 'test_helper'

class Employer::HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get employer_home_index_url
    assert_response :success
  end

end
