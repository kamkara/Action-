require "application_system_test_case"

class ProjetsTest < ApplicationSystemTestCase
  setup do
    @projet = projets(:one)
  end

  test "visiting the index" do
    visit projets_url
    assert_selector "h1", text: "Projets"
  end

  test "should create projet" do
    visit projets_url
    click_on "New projet"

    fill_in "Amount", with: @projet.amount
    fill_in "Content", with: @projet.content
    fill_in "Heroimg", with: @projet.heroImg
    fill_in "Start date", with: @projet.start_date
    fill_in "Title", with: @projet.title
    fill_in "User", with: @projet.user_id
    click_on "Create Projet"

    assert_text "Projet was successfully created"
    click_on "Back"
  end

  test "should update Projet" do
    visit projet_url(@projet)
    click_on "Edit this projet", match: :first

    fill_in "Amount", with: @projet.amount
    fill_in "Content", with: @projet.content
    fill_in "Heroimg", with: @projet.heroImg
    fill_in "Start date", with: @projet.start_date
    fill_in "Title", with: @projet.title
    fill_in "User", with: @projet.user_id
    click_on "Update Projet"

    assert_text "Projet was successfully updated"
    click_on "Back"
  end

  test "should destroy Projet" do
    visit projet_url(@projet)
    click_on "Destroy this projet", match: :first

    assert_text "Projet was successfully destroyed"
  end
end
