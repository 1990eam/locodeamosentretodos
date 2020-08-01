require 'test_helper'

class ApplicationRequestsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get application_requests_new_url
    assert_response :success
  end

  test "should get create" do
    get application_requests_create_url
    assert_response :success
  end

end
