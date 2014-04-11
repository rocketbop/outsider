require 'test_helper'

class LineFavouritesControllerTest < ActionController::TestCase
  setup do
    @line_favourite = line_favourites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:line_favourites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create line_favourite" do
    assert_difference('LineFavourite.count') do
      post :create, line_favourite: { favorite_id: @line_favourite.favorite_id, location_id: @line_favourite.location_id }
    end

    assert_redirected_to line_favourite_path(assigns(:line_favourite))
  end

  test "should show line_favourite" do
    get :show, id: @line_favourite
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @line_favourite
    assert_response :success
  end

  test "should update line_favourite" do
    patch :update, id: @line_favourite, line_favourite: { favorite_id: @line_favourite.favorite_id, location_id: @line_favourite.location_id }
    assert_redirected_to line_favourite_path(assigns(:line_favourite))
  end

  test "should destroy line_favourite" do
    assert_difference('LineFavourite.count', -1) do
      delete :destroy, id: @line_favourite
    end

    assert_redirected_to line_favourites_path
  end
end
