require 'test_helper'

class VoicelinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @voiceline = voicelines(:one)
  end

  test "should get index" do
    get voicelines_url
    assert_response :success
  end

  test "should get new" do
    get new_voiceline_url
    assert_response :success
  end

  test "should create voiceline" do
    assert_difference('Voiceline.count') do
      post voicelines_url, params: { voiceline: { character: @voiceline.character, line_id: @voiceline.line_id, project_id: @voiceline.project_id, user_id: @voiceline.user_id } }
    end

    assert_redirected_to voiceline_url(Voiceline.last)
  end

  test "should show voiceline" do
    get voiceline_url(@voiceline)
    assert_response :success
  end

  test "should get edit" do
    get edit_voiceline_url(@voiceline)
    assert_response :success
  end

  test "should update voiceline" do
    patch voiceline_url(@voiceline), params: { voiceline: { character: @voiceline.character, line_id: @voiceline.line_id, project_id: @voiceline.project_id, user_id: @voiceline.user_id } }
    assert_redirected_to voiceline_url(@voiceline)
  end

  test "should destroy voiceline" do
    assert_difference('Voiceline.count', -1) do
      delete voiceline_url(@voiceline)
    end

    assert_redirected_to voicelines_url
  end
end
