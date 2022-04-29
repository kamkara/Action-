require "application_system_test_case"

class CampagnesTest < ApplicationSystemTestCase
  setup do
    @campagne = campagnes(:one)
  end

  test "visiting the index" do
    visit campagnes_url
    assert_selector "h1", text: "Campagnes"
  end

  test "should create campagne" do
    visit campagnes_url
    click_on "New campagne"

    fill_in "Amount", with: @campagne.amount
    fill_in "Content", with: @campagne.content
    fill_in "Heroimg", with: @campagne.heroImg
    fill_in "Slug", with: @campagne.slug
    fill_in "Start date", with: @campagne.start_date
    fill_in "Status", with: @campagne.status
    fill_in "Title", with: @campagne.title
    fill_in "User", with: @campagne.user_id
    click_on "Create Campagne"

    assert_text "Campagne was successfully created"
    click_on "Back"
  end

  test "should update Campagne" do
    visit campagne_url(@campagne)
    click_on "Edit this campagne", match: :first

    fill_in "Amount", with: @campagne.amount
    fill_in "Content", with: @campagne.content
    fill_in "Heroimg", with: @campagne.heroImg
    fill_in "Slug", with: @campagne.slug
    fill_in "Start date", with: @campagne.start_date
    fill_in "Status", with: @campagne.status
    fill_in "Title", with: @campagne.title
    fill_in "User", with: @campagne.user_id
    click_on "Update Campagne"

    assert_text "Campagne was successfully updated"
    click_on "Back"
  end

  test "should destroy Campagne" do
    visit campagne_url(@campagne)
    click_on "Destroy this campagne", match: :first

    assert_text "Campagne was successfully destroyed"
  end
end
