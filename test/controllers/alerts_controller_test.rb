require 'test_helper'

class AlertsControllerTest < ActionController::TestCase
  test "should get activated" do
    get :activated
    assert_response :success
  end

end
