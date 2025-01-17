require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get findAll" do
    get categories_findAll_url
    assert_response :success
  end

  test "should get findOne" do
    get categories_findOne_url
    assert_response :success
  end

  test "should get create" do
    get categories_create_url
    assert_response :success
  end

  test "should get update" do
    get categories_update_url
    assert_response :success
  end

  test "should get delete" do
    get categories_delete_url
    assert_response :success
  end
end
