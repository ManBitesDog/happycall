require 'test_helper'

class HappyCallsControllerTest < ActionController::TestCase
  setup do
    @happy_call = happy_calls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:happy_calls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create happy_call" do
    assert_difference('HappyCall.count') do
      post :create, happy_call: { brnm: @happy_call.brnm, calldate: @happy_call.calldate, callee: @happy_call.callee, calltype: @happy_call.calltype, content: @happy_call.content, empnm: @happy_call.empnm, happycallcontent: @happy_call.happycallcontent, happycalldate: @happy_call.happycalldate, level: @happy_call.level, memo: @happy_call.memo, scrno: @happy_call.scrno, team: @happy_call.team }
    end

    assert_redirected_to happy_call_path(assigns(:happy_call))
  end

  test "should show happy_call" do
    get :show, id: @happy_call
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @happy_call
    assert_response :success
  end

  test "should update happy_call" do
    patch :update, id: @happy_call, happy_call: { brnm: @happy_call.brnm, calldate: @happy_call.calldate, callee: @happy_call.callee, calltype: @happy_call.calltype, content: @happy_call.content, empnm: @happy_call.empnm, happycallcontent: @happy_call.happycallcontent, happycalldate: @happy_call.happycalldate, level: @happy_call.level, memo: @happy_call.memo, scrno: @happy_call.scrno, team: @happy_call.team }
    assert_redirected_to happy_call_path(assigns(:happy_call))
  end

  test "should destroy happy_call" do
    assert_difference('HappyCall.count', -1) do
      delete :destroy, id: @happy_call
    end

    assert_redirected_to happy_calls_path
  end
end
