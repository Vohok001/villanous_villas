require "application_system_test_case"

class LairsTest < ApplicationSystemTestCase
  setup do
    @lair = lairs(:one)
  end

  test "visiting the index" do
    visit lairs_url
    assert_selector "h1", text: "Lairs"
  end

  test "should create lair" do
    visit lairs_url
    click_on "New lair"

    click_on "Create Lair"

    assert_text "Lair was successfully created"
    click_on "Back"
  end

  test "should update Lair" do
    visit lair_url(@lair)
    click_on "Edit this lair", match: :first

    click_on "Update Lair"

    assert_text "Lair was successfully updated"
    click_on "Back"
  end

  test "should destroy Lair" do
    visit lair_url(@lair)
    click_on "Destroy this lair", match: :first

    assert_text "Lair was successfully destroyed"
  end
end
