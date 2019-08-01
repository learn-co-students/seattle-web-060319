require 'test_helper'

class FriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fry = fries(:one)
  end

  test "should get index" do
    get fries_url
    assert_response :success
  end

  test "should get new" do
    get new_fry_url
    assert_response :success
  end

  test "should create fry" do
    assert_difference('Fry.count') do
      post fries_url, params: { fry: { calories: @fry.calories, curly: @fry.curly, sweet_potatoe: @fry.sweet_potatoe, waffle: @fry.waffle } }
    end

    assert_redirected_to fry_url(Fry.last)
  end

  test "should show fry" do
    get fry_url(@fry)
    assert_response :success
  end

  test "should get edit" do
    get edit_fry_url(@fry)
    assert_response :success
  end

  test "should update fry" do
    patch fry_url(@fry), params: { fry: { calories: @fry.calories, curly: @fry.curly, sweet_potatoe: @fry.sweet_potatoe, waffle: @fry.waffle } }
    assert_redirected_to fry_url(@fry)
  end

  test "should destroy fry" do
    assert_difference('Fry.count', -1) do
      delete fry_url(@fry)
    end

    assert_redirected_to fries_url
  end
end
