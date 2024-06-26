require "test_helper"

class TreksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trek = treks(:one)
  end

  test "should get index" do
    get treks_url
    assert_response :success
  end

  test "should get new" do
    get new_trek_url
    assert_response :success
  end

  test "should create trek" do
    assert_difference("Trek.count") do
      post treks_url, params: { trek: { address: @trek.address, auto_id: @trek.auto_id, store: @trek.store, trek_date: @trek.trek_date } }
    end

    assert_redirected_to trek_url(Trek.last)
  end

  test "should show trek" do
    get trek_url(@trek)
    assert_response :success
  end

  test "should get edit" do
    get edit_trek_url(@trek)
    assert_response :success
  end

  test "should update trek" do
    patch trek_url(@trek), params: { trek: { address: @trek.address, auto_id: @trek.auto_id, store: @trek.store, trek_date: @trek.trek_date } }
    assert_redirected_to trek_url(@trek)
  end

  test "should destroy trek" do
    assert_difference("Trek.count", -1) do
      delete trek_url(@trek)
    end

    assert_redirected_to treks_url
  end
end
