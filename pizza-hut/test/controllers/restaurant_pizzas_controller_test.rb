require "test_helper"

class RestaurantPizzasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get restaurant_pizzas_index_url
    assert_response :success
  end
end
