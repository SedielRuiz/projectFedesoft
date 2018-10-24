class ContraceptiveMethodsController < ApplicationController
  before_action :set_contraceptive_method, only: [:show, :update, :destroy]

  # GET /contraceptive_methods
  def index
    @contraceptive_methods = ContraceptiveMethod.all

    render json: @contraceptive_methods
  end

  # GET /contraceptive_methods/1
  def show
    render json: @contraceptive_method
  end

  # POST /contraceptive_methods
  def create
    @contraceptive_method = ContraceptiveMethod.new(contraceptive_method_params)

    if @contraceptive_method.save
      render json: @contraceptive_method, status: :created, location: @contraceptive_method
    else
      render json: @contraceptive_method.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /contraceptive_methods/1
  def update
    if @contraceptive_method.update(contraceptive_method_params)
      render json: @contraceptive_method
    else
      render json: @contraceptive_method.errors, status: :unprocessable_entity
    end
  end

  # DELETE /contraceptive_methods/1
  def destroy
    @contraceptive_method.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contraceptive_method
      @contraceptive_method = ContraceptiveMethod.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def contraceptive_method_params
      params.require(:contraceptive_method).permit(:name_contraceptive, :description_contraceptive)
    end
end
