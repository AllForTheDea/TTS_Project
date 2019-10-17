require 'test_helper'

class CharacterLinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @character_line = character_lines(:one)
  end

  test "should get index" do
    get character_lines_url
    assert_response :success
  end

  test "should get new" do
    get new_character_line_url
    assert_response :success
  end

  test "should create character_line" do
    assert_difference('CharacterLine.count') do
      post character_lines_url, params: { character_line: { line: @character_line.line, project_id: @character_line.project_id, user_id: @character_line.user_id, voiceline_id: @character_line.voiceline_id } }
    end

    assert_redirected_to character_line_url(CharacterLine.last)
  end

  test "should show character_line" do
    get character_line_url(@character_line)
    assert_response :success
  end

  test "should get edit" do
    get edit_character_line_url(@character_line)
    assert_response :success
  end

  test "should update character_line" do
    patch character_line_url(@character_line), params: { character_line: { line: @character_line.line, project_id: @character_line.project_id, user_id: @character_line.user_id, voiceline_id: @character_line.voiceline_id } }
    assert_redirected_to character_line_url(@character_line)
  end

  test "should destroy character_line" do
    assert_difference('CharacterLine.count', -1) do
      delete character_line_url(@character_line)
    end

    assert_redirected_to character_lines_url
  end
end
