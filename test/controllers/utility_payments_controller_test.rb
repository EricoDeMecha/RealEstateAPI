require "test_helper"

class UtilityPaymentsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get utility_payments_show_url
    assert_response :success
  end

  test "should get update" do
    get utility_payments_update_url
    assert_response :success
  end

  test "should get destroy" do
    get utility_payments_destroy_url
    assert_response :success
  end
end
