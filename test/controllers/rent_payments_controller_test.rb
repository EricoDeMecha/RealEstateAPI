require "test_helper"

class RentPaymentsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get rent_payments_show_url
    assert_response :success
  end

  test "should get update" do
    get rent_payments_update_url
    assert_response :success
  end

  test "should get destroy" do
    get rent_payments_destroy_url
    assert_response :success
  end
end
