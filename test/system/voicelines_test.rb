require "application_system_test_case"

class VoicelinesTest < ApplicationSystemTestCase
  setup do
    @voiceline = voicelines(:one)
  end

  test "visiting the index" do
    visit voicelines_url
    assert_selector "h1", text: "Voicelines"
  end

  test "creating a Voiceline" do
    visit voicelines_url
    click_on "New Voiceline"

    fill_in "Character", with: @voiceline.character
    fill_in "Line", with: @voiceline.line_id
    fill_in "Project", with: @voiceline.project_id
    fill_in "User", with: @voiceline.user_id
    click_on "Create Voiceline"

    assert_text "Voiceline was successfully created"
    click_on "Back"
  end

  test "updating a Voiceline" do
    visit voicelines_url
    click_on "Edit", match: :first

    fill_in "Character", with: @voiceline.character
    fill_in "Line", with: @voiceline.line_id
    fill_in "Project", with: @voiceline.project_id
    fill_in "User", with: @voiceline.user_id
    click_on "Update Voiceline"

    assert_text "Voiceline was successfully updated"
    click_on "Back"
  end

  test "destroying a Voiceline" do
    visit voicelines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Voiceline was successfully destroyed"
  end
end
