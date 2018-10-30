require "application_system_test_case"

class AddDevicesTest < ApplicationSystemTestCase
  setup do
    @add_device = add_devices(:one)
  end

  test "visiting the index" do
    visit orderItems_url
    assert_selector "h1", text: "Add Devices"
  end

  test "creating a Add device" do
    visit orderItems_url
    click_on "New Add Device"

    fill_in "Hardware", with: @add_device.hardware_id
    fill_in "Order", with: @add_device.order_id
    fill_in "Price", with: @add_device.price
    fill_in "Quantity", with: @add_device.quantity
    fill_in "User", with: @add_device.user_id
    click_on "Create Add device"

    assert_text "Add device was successfully created"
    click_on "Back"
  end

  test "updating a Add device" do
    visit orderItems_url
    click_on "Edit", match: :first

    fill_in "Hardware", with: @add_device.hardware_id
    fill_in "Order", with: @add_device.order_id
    fill_in "Price", with: @add_device.price
    fill_in "Quantity", with: @add_device.quantity
    fill_in "User", with: @add_device.user_id
    click_on "Update Add device"

    assert_text "Add device was successfully updated"
    click_on "Back"
  end

  test "destroying a Add device" do
    visit orderItems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Add device was successfully destroyed"
  end
end
