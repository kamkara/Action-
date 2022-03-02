require "application_system_test_case"

class AboutsTest < ApplicationSystemTestCase
  setup do
    @about = abouts(:one)
  end

  test "visiting the index" do
    visit abouts_url
    assert_selector "h1", text: "Abouts"
  end

  test "should create about" do
    visit abouts_url
    click_on "New about"

    fill_in "Content", with: @about.content
    fill_in "Country", with: @about.country
    fill_in "Donator", with: @about.donator
    fill_in "Img main", with: @about.img_main
    fill_in "Projets", with: @about.projets
    fill_in "Title", with: @about.title
    fill_in "User", with: @about.user_id
    click_on "Create About"

    assert_text "About was successfully created"
    click_on "Back"
  end

  test "should update About" do
    visit about_url(@about)
    click_on "Edit this about", match: :first

    fill_in "Content", with: @about.content
    fill_in "Country", with: @about.country
    fill_in "Donator", with: @about.donator
    fill_in "Img main", with: @about.img_main
    fill_in "Projets", with: @about.projets
    fill_in "Title", with: @about.title
    fill_in "User", with: @about.user_id
    click_on "Update About"

    assert_text "About was successfully updated"
    click_on "Back"
  end

  test "should destroy About" do
    visit about_url(@about)
    click_on "Destroy this about", match: :first

    assert_text "About was successfully destroyed"
  end
end
