require "test_helper"

class PizzasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pizzas_index_url
    assert_response :success
  end

  test "should get show" do
    get pizzas_show_url
    assert_response :success
  end

  test "should get update" do
    get pizzas_update_url
    assert_response :success
  end

  test "should get delete" do
    get pizzas_delete_url
    assert_response :success
  end
end
