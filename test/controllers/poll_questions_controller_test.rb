require 'test_helper'

class PollQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poll_question = poll_questions(:one)
  end

  test "should get index" do
    get poll_questions_url, as: :json
    assert_response :success
  end

  test "should create poll_question" do
    assert_difference('PollQuestion.count') do
      post poll_questions_url, params: { poll_question: { poll_id: @poll_question.poll_id, question_id: @poll_question.question_id } }, as: :json
    end

    assert_response 201
  end

  test "should show poll_question" do
    get poll_question_url(@poll_question), as: :json
    assert_response :success
  end

  test "should update poll_question" do
    patch poll_question_url(@poll_question), params: { poll_question: { poll_id: @poll_question.poll_id, question_id: @poll_question.question_id } }, as: :json
    assert_response 200
  end

  test "should destroy poll_question" do
    assert_difference('PollQuestion.count', -1) do
      delete poll_question_url(@poll_question), as: :json
    end

    assert_response 204
  end
end
