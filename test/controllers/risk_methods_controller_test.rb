require 'test_helper'

class RiskMethodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @risk_method = risk_methods(:one)
  end

  test "should get index" do
    get risk_methods_url, as: :json
    assert_response :success
  end

  test "should create risk_method" do
    assert_difference('RiskMethod.count') do
      post risk_methods_url, params: { risk_method: { method_prevention_id: @risk_method.method_prevention_id, risk_id: @risk_method.risk_id } }, as: :json
    end

    assert_response 201
  end

  test "should show risk_method" do
    get risk_method_url(@risk_method), as: :json
    assert_response :success
  end

  test "should update risk_method" do
    patch risk_method_url(@risk_method), params: { risk_method: { method_prevention_id: @risk_method.method_prevention_id, risk_id: @risk_method.risk_id } }, as: :json
    assert_response 200
  end

  test "should destroy risk_method" do
    assert_difference('RiskMethod.count', -1) do
      delete risk_method_url(@risk_method), as: :json
    end

    assert_response 204
  end
end
