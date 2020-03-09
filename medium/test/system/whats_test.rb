require "application_system_test_case"

class WhatsTest < ApplicationSystemTestCase
  setup do
    @what = whats(:one)
  end

  test "visiting the index" do
    visit whats_url
    assert_selector "h1", text: "Whats"
  end

  test "creating a What" do
    visit whats_url
    click_on "New What"

    fill_in "Body", with: @what.body
    fill_in "Idea", with: @what.idea_id
    fill_in "User name", with: @what.user_name
    click_on "Create What"

    assert_text "What was successfully created"
    click_on "Back"
  end

  test "updating a What" do
    visit whats_url
    click_on "Edit", match: :first

    fill_in "Body", with: @what.body
    fill_in "Idea", with: @what.idea_id
    fill_in "User name", with: @what.user_name
    click_on "Update What"

    assert_text "What was successfully updated"
    click_on "Back"
  end

  test "destroying a What" do
    visit whats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "What was successfully destroyed"
  end
end
