require 'test_helper'

class WeightsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get weights_show_url
    assert_response :success
  end

  test "should get create" do
    get weights_create_url
    assert_response :success
  end

  test "should get update" do
    get weights_update_url
    assert_response :success
  end

end
