require "test_helper"

class PrivateShiftControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get private_shift_index_url
    assert_response :success
  end

  test "should get new" do
    get private_shift_new_url
    assert_response :success
  end
end
