require 'test_helper'

class ResultSurveysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @result_survey = result_surveys(:one)
  end

  test "should get index" do
    get result_surveys_url, as: :json
    assert_response :success
  end

  test "should create result_survey" do
    assert_difference('ResultSurvey.count') do
      post result_surveys_url, params: { result_survey: { answer: @result_survey.answer, apply_poll_id: @result_survey.apply_poll_id, poll_id: @result_survey.poll_id, question_id: @result_survey.question_id } }, as: :json
    end

    assert_response 201
  end

  test "should show result_survey" do
    get result_survey_url(@result_survey), as: :json
    assert_response :success
  end

  test "should update result_survey" do
    patch result_survey_url(@result_survey), params: { result_survey: { answer: @result_survey.answer, apply_poll_id: @result_survey.apply_poll_id, poll_id: @result_survey.poll_id, question_id: @result_survey.question_id } }, as: :json
    assert_response 200
  end

  test "should destroy result_survey" do
    assert_difference('ResultSurvey.count', -1) do
      delete result_survey_url(@result_survey), as: :json
    end

    assert_response 204
  end
end
