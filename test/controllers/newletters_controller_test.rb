require "test_helper"

class NewlettersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @newletter = newletters(:one)
  end

  test "should get index" do
    get newletters_url
    assert_response :success
  end

  test "should get new" do
    get new_newletter_url
    assert_response :success
  end

  test "should create newletter" do
    assert_difference("Newletter.count") do
      post newletters_url, params: { newletter: { email: @newletter.email, first_name: @newletter.first_name, last_name: @newletter.last_name } }
    end

    assert_redirected_to newletter_url(Newletter.last)
  end

  test "should show newletter" do
    get newletter_url(@newletter)
    assert_response :success
  end

  test "should get edit" do
    get edit_newletter_url(@newletter)
    assert_response :success
  end

  test "should update newletter" do
    patch newletter_url(@newletter), params: { newletter: { email: @newletter.email, first_name: @newletter.first_name, last_name: @newletter.last_name } }
    assert_redirected_to newletter_url(@newletter)
  end

  test "should destroy newletter" do
    assert_difference("Newletter.count", -1) do
      delete newletter_url(@newletter)
    end

    assert_redirected_to newletters_url
  end
end
