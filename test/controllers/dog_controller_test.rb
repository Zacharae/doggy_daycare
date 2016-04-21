require 'test_helper'

class DogControllerTest < ActionController::TestCase
  test "should get daycare" do
    get :daycare
    assert_response :success
  end

  test "should get grooming" do
    get :grooming
    assert_response :success
  end

end
