require "application_system_test_case"

class RunningsTest < ApplicationSystemTestCase
  setup do
    @running = runnings(:one)
  end

  test "visiting the index" do
    visit runnings_url
    assert_selector "h1", text: "Runnings"
  end

  test "creating a Running" do
    visit runnings_url
    click_on "New Running"

    fill_in "Base", with: @running.base_id
    fill_in "Go counts", with: @running.go_counts
    fill_in "Place", with: @running.place
    fill_in "Reason", with: @running.reason
    click_on "Create Running"

    assert_text "Running was successfully created"
    click_on "Back"
  end

  test "updating a Running" do
    visit runnings_url
    click_on "Edit", match: :first

    fill_in "Base", with: @running.base_id
    fill_in "Go counts", with: @running.go_counts
    fill_in "Place", with: @running.place
    fill_in "Reason", with: @running.reason
    click_on "Update Running"

    assert_text "Running was successfully updated"
    click_on "Back"
  end

  test "destroying a Running" do
    visit runnings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Running was successfully destroyed"
  end
end
