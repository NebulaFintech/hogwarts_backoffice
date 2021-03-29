require "test_helper"

class SchoolApplicationsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get school_applications_show_url
    assert_response :success
  end
end
