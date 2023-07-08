require "test_helper"

class UnitsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get units_show_url
    assert_response :success
  end

  test "should get create" do
    get units_create_url
    assert_response :success
  end

  test "should get update" do
    get units_update_url
    assert_response :success
  end

  test "should get destroy" do
    get units_destroy_url
    assert_response :success
  end
end
