require "application_system_test_case"

class VolunteerheresTest < ApplicationSystemTestCase
  setup do
    @volunteerhere = volunteerheres(:one)
  end

  test "visiting the index" do
    visit volunteerheres_url
    assert_selector "h1", text: "Volunteerheres"
  end

  test "creating a Volunteerhere" do
    visit volunteerheres_url
    click_on "New Volunteerhere"

    fill_in "Email", with: @volunteerhere.email
    fill_in "First name", with: @volunteerhere.first_name
    fill_in "Last name", with: @volunteerhere.last_name
    click_on "Create Volunteerhere"

    assert_text "Volunteerhere was successfully created"
    click_on "Back"
  end

  test "updating a Volunteerhere" do
    visit volunteerheres_url
    click_on "Edit", match: :first

    fill_in "Email", with: @volunteerhere.email
    fill_in "First name", with: @volunteerhere.first_name
    fill_in "Last name", with: @volunteerhere.last_name
    click_on "Update Volunteerhere"

    assert_text "Volunteerhere was successfully updated"
    click_on "Back"
  end

  test "destroying a Volunteerhere" do
    visit volunteerheres_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Volunteerhere was successfully destroyed"
  end
end
