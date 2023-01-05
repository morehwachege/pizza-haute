require "test_helper"

class RestaurantsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get restaurants_index_url
    assert_response :success
  end

  test "should get show" do
    get restaurants_show_url
    assert_response :success
  end

  test "should get update" do
    get restaurants_update_url
    assert_response :success
  end

  test "should get delete" do
    get restaurants_delete_url
    assert_response :success
  end
end
