require "test_helper"

class InvolvedControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get involved_index_url
    assert_response :success
  end
end
