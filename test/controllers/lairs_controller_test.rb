require "test_helper"

class LairsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lair = lairs(:one)
  end

  test "should get index" do
    get lairs_url
    assert_response :success
  end

  test "should get new" do
    get new_lair_url
    assert_response :success
  end

  test "should create lair" do
    assert_difference("Lair.count") do
      post lairs_url, params: { lair: {  } }
    end

    assert_redirected_to lair_url(Lair.last)
  end

  test "should show lair" do
    get lair_url(@lair)
    assert_response :success
  end

  test "should get edit" do
    get edit_lair_url(@lair)
    assert_response :success
  end

  test "should update lair" do
    patch lair_url(@lair), params: { lair: {  } }
    assert_redirected_to lair_url(@lair)
  end

  test "should destroy lair" do
    assert_difference("Lair.count", -1) do
      delete lair_url(@lair)
    end

    assert_redirected_to lairs_url
  end
end
