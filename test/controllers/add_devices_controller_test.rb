require 'test_helper'

class AddDevicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_device = add_devices(:one)
  end

  test "should get index" do
    get orderItems_url
    assert_response :success
  end

  test "should get new" do
    get new_orderItem_url
    assert_response :success
  end

  test "should create add_device" do
    assert_difference('OrderItem.count') do
      post orderItems_url, params: {add_device: {hardware_id: @add_device.hardware_id, order_id: @add_device.order_id, price: @add_device.price, quantity: @add_device.quantity, user_id: @add_device.user_id } }
    end

    assert_redirected_to orderItem_url(OrderItem.last)
  end

  test "should show add_device" do
    get orderItem_url(@add_device)
    assert_response :success
  end

  test "should get edit" do
    get edit_orderItem_url(@add_device)
    assert_response :success
  end

  test "should update add_device" do
    patch orderItem_url(@add_device), params: {add_device: {hardware_id: @add_device.hardware_id, order_id: @add_device.order_id, price: @add_device.price, quantity: @add_device.quantity, user_id: @add_device.user_id } }
    assert_redirected_to orderItem_url(@add_device)
  end

  test "should destroy add_device" do
    assert_difference('OrderItem.count', -1) do
      delete orderItem_url(@add_device)
    end

    assert_redirected_to orderItems_url
  end
end
