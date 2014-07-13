require 'test_helper'

class RamenControllerTest < ActionController::TestCase
  setup do
    @raman = ramen(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ramen)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create raman" do
    assert_difference('Raman.count') do
      post :create, raman: { string: @raman.string }
    end

    assert_redirected_to raman_path(assigns(:raman))
  end

  test "should show raman" do
    get :show, id: @raman
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @raman
    assert_response :success
  end

  test "should update raman" do
    patch :update, id: @raman, raman: { string: @raman.string }
    assert_redirected_to raman_path(assigns(:raman))
  end

  test "should destroy raman" do
    assert_difference('Raman.count', -1) do
      delete :destroy, id: @raman
    end

    assert_redirected_to ramen_path
  end
end
