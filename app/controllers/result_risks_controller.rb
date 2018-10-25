class ResultRisksController < ApplicationController
  before_action :set_result_risk, only: [:show, :update, :destroy]

  # GET /result_risks
  def index
    @result_risks = ResultRisk.all

    render json: @result_risks
  end

  # GET /result_risks/1
  def show
    render json: @result_risk
  end

  # POST /result_risks
  def create
    @result_risk = ResultRisk.new(result_risk_params)

    if @result_risk.save
      render json: @result_risk, status: :created, location: @result_risk
    else
      render json: @result_risk.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /result_risks/1
  def update
    if @result_risk.update(result_risk_params)
      render json: @result_risk
    else
      render json: @result_risk.errors, status: :unprocessable_entity
    end
  end

  # DELETE /result_risks/1
  def destroy
    @result_risk.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_result_risk
      @result_risk = ResultRisk.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def result_risk_params
      params.require(:result_risk).permit(:result_survey, :risk)
    end
end
