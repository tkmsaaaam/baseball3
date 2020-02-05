require 'test_helper'

class RunningsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @running = runnings(:one)
  end

  test "should get index" do
    get runnings_url
    assert_response :success
  end

  test "should get new" do
    get new_running_url
    assert_response :success
  end

  test "should create running" do
    assert_difference('Running.count') do
      post runnings_url, params: { running: { base_id: @running.base_id, go_counts: @running.go_counts, place: @running.place, reason: @running.reason } }
    end

    assert_redirected_to running_url(Running.last)
  end

  test "should show running" do
    get running_url(@running)
    assert_response :success
  end

  test "should get edit" do
    get edit_running_url(@running)
    assert_response :success
  end

  test "should update running" do
    patch running_url(@running), params: { running: { base_id: @running.base_id, go_counts: @running.go_counts, place: @running.place, reason: @running.reason } }
    assert_redirected_to running_url(@running)
  end

  test "should destroy running" do
    assert_difference('Running.count', -1) do
      delete running_url(@running)
    end

    assert_redirected_to runnings_url
  end
end
