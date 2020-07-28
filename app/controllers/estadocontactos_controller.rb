class EstadocontactosController < ApplicationController
  before_action :set_estadocontacto, only: [:show, :update, :destroy]

  # GET /estadocontactos
  def index
    @estadocontactos = Estadocontacto.all

    render json: @estadocontactos
  end

  # GET /estadocontactos/1
  def show
    render json: @estadocontacto
  end

  # POST /estadocontactos
  def create
    @estadocontacto = Estadocontacto.new(estadocontacto_params)

    if @estadocontacto.save
      render json: @estadocontacto, status: :created, location: @estadocontacto
    else
      render json: @estadocontacto.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /estadocontactos/1
  def update
    if @estadocontacto.update(estadocontacto_params)
      render json: @estadocontacto
    else
      render json: @estadocontacto.errors, status: :unprocessable_entity
    end
  end

  # DELETE /estadocontactos/1
  def destroy
    @estadocontacto.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estadocontacto
      @estadocontacto = Estadocontacto.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def estadocontacto_params
      params.require(:estadocontacto).permit(:descripcion)
    end
end
