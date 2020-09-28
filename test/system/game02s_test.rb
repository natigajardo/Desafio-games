require "application_system_test_case"

class Game02sTest < ApplicationSystemTestCase
  setup do
    @game02 = game02s(:one)
  end

  test "visiting the index" do
    visit game02s_url
    assert_selector "h1", text: "Game02s"
  end

  test "creating a Game02" do
    visit game02s_url
    click_on "New Game02"

    fill_in "Rule text", with: @game02.rule_text
    click_on "Create Game02"

    assert_text "Game02 was successfully created"
    click_on "Back"
  end

  test "updating a Game02" do
    visit game02s_url
    click_on "Edit", match: :first

    fill_in "Rule text", with: @game02.rule_text
    click_on "Update Game02"

    assert_text "Game02 was successfully updated"
    click_on "Back"
  end

  test "destroying a Game02" do
    visit game02s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Game02 was successfully destroyed"
  end
end
