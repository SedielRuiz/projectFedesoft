class ResultSurveysController < ApplicationController
  before_action :set_result_survey, only: [:show, :update, :destroy]

  # GET /result_surveys
  def index
    @result_surveys = ResultSurvey.all

    render json: @result_surveys
  end

  # GET /result_surveys/1
  def show
    render json: @result_survey
  end

  # POST /result_surveys
  def create
    @result_survey = ResultSurvey.new(result_survey_params)

    if @result_survey.save
      render json: @result_survey, status: :created, location: @result_survey
    else
      render json: @result_survey.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /result_surveys/1
  def update
    if @result_survey.update(result_survey_params)
      render json: @result_survey
    else
      render json: @result_survey.errors, status: :unprocessable_entity
    end
  end

  # DELETE /result_surveys/1
  def destroy
    @result_survey.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_result_survey
      @result_survey = ResultSurvey.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def result_survey_params
      params.permit(:apply_poll_id, :poll_id, :question_id, :answer)
    end
end
