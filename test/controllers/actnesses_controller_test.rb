require 'test_helper'

class ActnessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @actness = actnesses(:one)
  end

  test "should get index" do
    get actnesses_url
    assert_response :success
  end

  test "should get new" do
    get new_actness_url
    assert_response :success
  end

  test "should create actness" do
    assert_difference('Actness.count') do
      post actnesses_url, params: { actness: { Situation_id: @actness.Situation_id, ball: @actness.ball, ball_strike: @actness.ball_strike, ball_type: @actness.ball_type, foul: @actness.foul, strike: @actness.strike, swing: @actness.swing } }
    end

    assert_redirected_to actness_url(Actness.last)
  end

  test "should show actness" do
    get actness_url(@actness)
    assert_response :success
  end

  test "should get edit" do
    get edit_actness_url(@actness)
    assert_response :success
  end

  test "should update actness" do
    patch actness_url(@actness), params: { actness: { Situation_id: @actness.Situation_id, ball: @actness.ball, ball_strike: @actness.ball_strike, ball_type: @actness.ball_type, foul: @actness.foul, strike: @actness.strike, swing: @actness.swing } }
    assert_redirected_to actness_url(@actness)
  end

  test "should destroy actness" do
    assert_difference('Actness.count', -1) do
      delete actness_url(@actness)
    end

    assert_redirected_to actnesses_url
  end
end
