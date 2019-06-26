require 'test_helper'

class EateriesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get eateries_new_url
    assert_response :success
  end

end
