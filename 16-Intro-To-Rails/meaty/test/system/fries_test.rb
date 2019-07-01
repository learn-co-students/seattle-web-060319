require "application_system_test_case"

class FriesTest < ApplicationSystemTestCase
  setup do
    @fry = fries(:one)
  end

  test "visiting the index" do
    visit fries_url
    assert_selector "h1", text: "Fries"
  end

  test "creating a Fry" do
    visit fries_url
    click_on "New Fry"

    fill_in "Calories", with: @fry.calories
    check "Curly" if @fry.curly
    check "Sweet potatoe" if @fry.sweet_potatoe
    check "Waffle" if @fry.waffle
    click_on "Create Fry"

    assert_text "Fry was successfully created"
    click_on "Back"
  end

  test "updating a Fry" do
    visit fries_url
    click_on "Edit", match: :first

    fill_in "Calories", with: @fry.calories
    check "Curly" if @fry.curly
    check "Sweet potatoe" if @fry.sweet_potatoe
    check "Waffle" if @fry.waffle
    click_on "Update Fry"

    assert_text "Fry was successfully updated"
    click_on "Back"
  end

  test "destroying a Fry" do
    visit fries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fry was successfully destroyed"
  end
end
