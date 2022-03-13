require "test_helper"

class CampagnesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @campagne = campagnes(:one)
  end

  test "should get index" do
    get campagnes_url
    assert_response :success
  end

  test "should get new" do
    get new_campagne_url
    assert_response :success
  end

  test "should create campagne" do
    assert_difference("Campagne.count") do
      post campagnes_url, params: { campagne: { amount: @campagne.amount, content: @campagne.content, heroImg: @campagne.heroImg, slug: @campagne.slug, start_date: @campagne.start_date, status: @campagne.status, title: @campagne.title, user_id: @campagne.user_id } }
    end

    assert_redirected_to campagne_url(Campagne.last)
  end

  test "should show campagne" do
    get campagne_url(@campagne)
    assert_response :success
  end

  test "should get edit" do
    get edit_campagne_url(@campagne)
    assert_response :success
  end

  test "should update campagne" do
    patch campagne_url(@campagne), params: { campagne: { amount: @campagne.amount, content: @campagne.content, heroImg: @campagne.heroImg, slug: @campagne.slug, start_date: @campagne.start_date, status: @campagne.status, title: @campagne.title, user_id: @campagne.user_id } }
    assert_redirected_to campagne_url(@campagne)
  end

  test "should destroy campagne" do
    assert_difference("Campagne.count", -1) do
      delete campagne_url(@campagne)
    end

    assert_redirected_to campagnes_url
  end
end
