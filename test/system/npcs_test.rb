require "application_system_test_case"

class NpcsTest < ApplicationSystemTestCase
  setup do
    @npc = npcs(:one)
  end

  test "visiting the index" do
    visit npcs_url
    assert_selector "h1", text: "Npcs"
  end

  test "creating a Npc" do
    visit npcs_url
    click_on "New Npc"

    fill_in "Defeated By Char", with: @npc.defeated_by_char
    fill_in "Description", with: @npc.description
    fill_in "Level", with: @npc.level
    fill_in "Name", with: @npc.name
    click_on "Create Npc"

    assert_text "Npc was successfully created"
    click_on "Back"
  end

  test "updating a Npc" do
    visit npcs_url
    click_on "Edit", match: :first

    fill_in "Defeated By Char", with: @npc.defeated_by_char
    fill_in "Description", with: @npc.description
    fill_in "Level", with: @npc.level
    fill_in "Name", with: @npc.name
    click_on "Update Npc"

    assert_text "Npc was successfully updated"
    click_on "Back"
  end

  test "destroying a Npc" do
    visit npcs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Npc was successfully destroyed"
  end
end