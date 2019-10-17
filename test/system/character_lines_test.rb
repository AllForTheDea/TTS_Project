require "application_system_test_case"

class CharacterLinesTest < ApplicationSystemTestCase
  setup do
    @character_line = character_lines(:one)
  end

  test "visiting the index" do
    visit character_lines_url
    assert_selector "h1", text: "Character Lines"
  end

  test "creating a Character line" do
    visit character_lines_url
    click_on "New Character Line"

    fill_in "Line", with: @character_line.line
    fill_in "Project", with: @character_line.project_id
    fill_in "User", with: @character_line.user_id
    fill_in "Voiceline", with: @character_line.voiceline_id
    click_on "Create Character line"

    assert_text "Character line was successfully created"
    click_on "Back"
  end

  test "updating a Character line" do
    visit character_lines_url
    click_on "Edit", match: :first

    fill_in "Line", with: @character_line.line
    fill_in "Project", with: @character_line.project_id
    fill_in "User", with: @character_line.user_id
    fill_in "Voiceline", with: @character_line.voiceline_id
    click_on "Update Character line"

    assert_text "Character line was successfully updated"
    click_on "Back"
  end

  test "destroying a Character line" do
    visit character_lines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Character line was successfully destroyed"
  end
end
