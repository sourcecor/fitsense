require 'test_helper'

class Admin::PicturesControllerTest < ActionController::TestCase
  test "should get update_sequence" do
    get :update_sequence
    assert_response :success
  end

end
