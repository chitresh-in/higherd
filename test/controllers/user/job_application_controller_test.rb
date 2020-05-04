require 'test_helper'

class User::JobApplicationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_job_application_index_url
    assert_response :success
  end

end
