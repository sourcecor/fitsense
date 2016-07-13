require 'test_helper'

class Api::V1::JcoinControllerTest < ActionController::TestCase
  test "should get fetch" do
    get :fetch
    assert_response :success
  end

  test "should get trans" do
    get :trans
    assert_response :success
  end

end
