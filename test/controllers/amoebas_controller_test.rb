require 'test_helper'

class AmoebasControllerTest < ActionController::TestCase
  setup do
    @amoeba = amoebas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:amoebas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create amoeba" do
    assert_difference('Amoeba.count') do
      post :create, amoeba: { act_id: @amoeba.act_id, generation: @amoeba.generation, name: @amoeba.name, talent_id: @amoeba.talent_id }
    end

    assert_redirected_to amoeba_path(assigns(:amoeba))
  end

  test "should show amoeba" do
    get :show, id: @amoeba
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @amoeba
    assert_response :success
  end

  test "should update amoeba" do
    patch :update, id: @amoeba, amoeba: { act_id: @amoeba.act_id, generation: @amoeba.generation, name: @amoeba.name, talent_id: @amoeba.talent_id }
    assert_redirected_to amoeba_path(assigns(:amoeba))
  end

  test "should destroy amoeba" do
    assert_difference('Amoeba.count', -1) do
      delete :destroy, id: @amoeba
    end

    assert_redirected_to amoebas_path
  end
end
