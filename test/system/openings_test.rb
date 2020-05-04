require "application_system_test_case"

class OpeningsTest < ApplicationSystemTestCase
  setup do
    @opening = openings(:one)
  end

  test "visiting the index" do
    visit openings_url
    assert_selector "h1", text: "Openings"
  end

  test "creating a Opening" do
    visit openings_url
    click_on "New Opening"

    fill_in "Ctc", with: @opening.ctc
    fill_in "Deadline", with: @opening.deadline
    fill_in "Location", with: @opening.location
    fill_in "Profile", with: @opening.profile
    click_on "Create Opening"

    assert_text "Opening was successfully created"
    click_on "Back"
  end

  test "updating a Opening" do
    visit openings_url
    click_on "Edit", match: :first

    fill_in "Ctc", with: @opening.ctc
    fill_in "Deadline", with: @opening.deadline
    fill_in "Location", with: @opening.location
    fill_in "Profile", with: @opening.profile
    click_on "Update Opening"

    assert_text "Opening was successfully updated"
    click_on "Back"
  end

  test "destroying a Opening" do
    visit openings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Opening was successfully destroyed"
  end
end
