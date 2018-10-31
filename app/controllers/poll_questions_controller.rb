class PollQuestionsController < ApplicationController
  before_action :set_poll_question, only: [:show, :update, :destroy]

  # GET /poll_questions
  def index
    @poll_questions = PollQuestion.all

    render json: @poll_questions
  end

  # GET /poll_questions/1
  def show
    render json: @poll_question
  end

  # GET /questiosSurvey/id_poll
  def questiosSurvey
    @poll_question = PollQuestion.where(poll_id: params[:poll_id])
    render json: @poll_question
  end

  # POST /poll_questions
  def create
    @poll_question = PollQuestion.new(poll_question_params)

    if @poll_question.save
      render json: @poll_question, status: :created, location: @poll_question
    else
      render json: @poll_question.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /poll_questions/1
  def update
    if @poll_question.update(poll_question_params)
      render json: @poll_question
    else
      render json: @poll_question.errors, status: :unprocessable_entity
    end
  end

  # DELETE /poll_questions/1
  def destroy
    @poll_question.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poll_question
      @poll_question = PollQuestion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def poll_question_params
      params.require(:poll_question).permit(:poll_id, :question_id)
    end
end
