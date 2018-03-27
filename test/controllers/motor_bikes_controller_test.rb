require 'test_helper'

class MotorBikesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @motor_bike = motor_bikes(:one)
  end

  test "should get index" do
    get motor_bikes_url
    assert_response :success
  end

  test "should get new" do
    get new_motor_bike_url
    assert_response :success
  end

  test "should create motor_bike" do
    assert_difference('MotorBike.count') do
      post motor_bikes_url, params: { motor_bike: {  } }
    end

    assert_redirected_to motor_bike_url(MotorBike.last)
  end

  test "should show motor_bike" do
    get motor_bike_url(@motor_bike)
    assert_response :success
  end

  test "should get edit" do
    get edit_motor_bike_url(@motor_bike)
    assert_response :success
  end

  test "should update motor_bike" do
    patch motor_bike_url(@motor_bike), params: { motor_bike: {  } }
    assert_redirected_to motor_bike_url(@motor_bike)
  end

  test "should destroy motor_bike" do
    assert_difference('MotorBike.count', -1) do
      delete motor_bike_url(@motor_bike)
    end

    assert_redirected_to motor_bikes_url
  end
end
