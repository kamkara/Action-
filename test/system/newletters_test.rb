require "application_system_test_case"

class NewlettersTest < ApplicationSystemTestCase
  setup do
    @newletter = newletters(:one)
  end

  test "visiting the index" do
    visit newletters_url
    assert_selector "h1", text: "Newletters"
  end

  test "should create newletter" do
    visit newletters_url
    click_on "New newletter"

    fill_in "Email", with: @newletter.email
    fill_in "First name", with: @newletter.first_name
    fill_in "Last name", with: @newletter.last_name
    click_on "Create Newletter"

    assert_text "Newletter was successfully created"
    click_on "Back"
  end

  test "should update Newletter" do
    visit newletter_url(@newletter)
    click_on "Edit this newletter", match: :first

    fill_in "Email", with: @newletter.email
    fill_in "First name", with: @newletter.first_name
    fill_in "Last name", with: @newletter.last_name
    click_on "Update Newletter"

    assert_text "Newletter was successfully updated"
    click_on "Back"
  end

  test "should destroy Newletter" do
    visit newletter_url(@newletter)
    click_on "Destroy this newletter", match: :first

    assert_text "Newletter was successfully destroyed"
  end
end
