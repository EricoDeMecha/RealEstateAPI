require "test_helper"

class ServicePaymentsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get service_payments_show_url
    assert_response :success
  end

  test "should get update" do
    get service_payments_update_url
    assert_response :success
  end

  test "should get destroy" do
    get service_payments_destroy_url
    assert_response :success
  end
end
