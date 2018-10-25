require 'test_helper'

class ResultRisksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @result_risk = result_risks(:one)
  end

  test "should get index" do
    get result_risks_url, as: :json
    assert_response :success
  end

  test "should create result_risk" do
    assert_difference('ResultRisk.count') do
      post result_risks_url, params: { result_risk: { result_survey: @result_risk.result_survey, risk: @result_risk.risk } }, as: :json
    end

    assert_response 201
  end

  test "should show result_risk" do
    get result_risk_url(@result_risk), as: :json
    assert_response :success
  end

  test "should update result_risk" do
    patch result_risk_url(@result_risk), params: { result_risk: { result_survey: @result_risk.result_survey, risk: @result_risk.risk } }, as: :json
    assert_response 200
  end

  test "should destroy result_risk" do
    assert_difference('ResultRisk.count', -1) do
      delete result_risk_url(@result_risk), as: :json
    end

    assert_response 204
  end
end
