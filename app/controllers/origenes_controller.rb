class OrigenesController < ApplicationController
  before_action :set_origen, only: [:show, :update, :destroy]

  # GET /origenes
  def index
    @origenes = Origen.all

    render json: @origenes
  end

  # GET /origenes/1
  def show
    render json: @origen
  end

  # POST /origenes
  def create
    @origen = Origen.new(origen_params)

    if @origen.save
      render json: @origen, status: :created, location: @origen
    else
      render json: @origen.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /origenes/1
  def update
    if @origen.update(origen_params)
      render json: @origen
    else
      render json: @origen.errors, status: :unprocessable_entity
    end
  end

  # DELETE /origenes/1
  def destroy
    @origen.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_origen
      @origen = Origen.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def origen_params
      params.require(:origen).permit(:descripcion)
    end
end
