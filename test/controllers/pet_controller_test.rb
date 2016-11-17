require 'test_helper'

class PetControllerTest < ActionController::TestCase
  test "should get get_dog" do
    get :get_dog
    assert_response :success
  end

end
