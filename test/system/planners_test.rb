require "application_system_test_case"

class PlannersTest < ApplicationSystemTestCase
  setup do
    @planner = planners(:one)
  end

  test "visiting the index" do
    visit planners_url
    assert_selector "h1", text: "Planners"
  end

  test "creating a Planner" do
    visit planners_url
    click_on "New Planner"

    fill_in "Category", with: @planner.category
    click_on "Create Planner"

    assert_text "Planner was successfully created"
    click_on "Back"
  end

  test "updating a Planner" do
    visit planners_url
    click_on "Edit", match: :first

    fill_in "Category", with: @planner.category
    click_on "Update Planner"

    assert_text "Planner was successfully updated"
    click_on "Back"
  end

  test "destroying a Planner" do
    visit planners_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Planner was successfully destroyed"
  end
end
