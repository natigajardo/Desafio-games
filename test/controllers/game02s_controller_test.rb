require 'test_helper'

class Game02sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game02 = game02s(:one)
  end

  test "should get index" do
    get game02s_url
    assert_response :success
  end

  test "should get new" do
    get new_game02_url
    assert_response :success
  end

  test "should create game02" do
    assert_difference('Game02.count') do
      post game02s_url, params: { game02: { rule_text: @game02.rule_text } }
    end

    assert_redirected_to game02_url(Game02.last)
  end

  test "should show game02" do
    get game02_url(@game02)
    assert_response :success
  end

  test "should get edit" do
    get edit_game02_url(@game02)
    assert_response :success
  end

  test "should update game02" do
    patch game02_url(@game02), params: { game02: { rule_text: @game02.rule_text } }
    assert_redirected_to game02_url(@game02)
  end

  test "should destroy game02" do
    assert_difference('Game02.count', -1) do
      delete game02_url(@game02)
    end

    assert_redirected_to game02s_url
  end
end
