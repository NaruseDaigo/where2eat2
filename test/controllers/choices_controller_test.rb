require 'test_helper'

class ChoicesControllerTest < ActionDispatch::IntegrationTest
  test "should get start" do
    get choices_start_url
    assert_response :success
  end

end
