require 'test_helper'

class RamenImagesControllerTest < ActionController::TestCase
  setup do
    @ramen_image = ramen_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ramen_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ramen_image" do
    assert_difference('RamenImage.count') do
      post :create, ramen_image: { test: @ramen_image.test }
    end

    assert_redirected_to ramen_image_path(assigns(:ramen_image))
  end

  test "should show ramen_image" do
    get :show, id: @ramen_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ramen_image
    assert_response :success
  end

  test "should update ramen_image" do
    patch :update, id: @ramen_image, ramen_image: { test: @ramen_image.test }
    assert_redirected_to ramen_image_path(assigns(:ramen_image))
  end

  test "should destroy ramen_image" do
    assert_difference('RamenImage.count', -1) do
      delete :destroy, id: @ramen_image
    end

    assert_redirected_to ramen_images_path
  end
end
