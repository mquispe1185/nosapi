class AfiliadosController < ApplicationController
  before_action :set_afiliado, only: [:show, :update, :destroy]

  # GET /afiliados
  def index
    @afiliados = Afiliado.where(activo: true)

    render json: @afiliados
  end

  def search
    @afiliado = Afiliado.buscar(params[:dni])
    render json: @afiliado
  
  end
  # GET /afiliados/1
  def show
    render json: @afiliado
  end

  def stats
    @afiliados = Afiliado.all
    render json: @afiliados, each_serializer: AfiliadoEstadisticaSerializer
  end

  # POST /afiliados
  def create
    @afiliado = Afiliado.new(afiliado_params)

    if @afiliado.save
      render json: @afiliado, status: :created
    else
      puts @afiliado.errors.full_messages
      render json: @afiliado.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /afiliados/1
  def update
    if @afiliado.update(afiliado_params)
      render json: @afiliado
    else
      
      render json: @afiliado.errors, status: :unprocessable_entity
    end
  end

  # DELETE /afiliados/1
  def destroy
    @afiliado.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_afiliado
      @afiliado = Afiliado.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def afiliado_params
      params.permit(:apellido, :nombre, :dni, :sexo, :domicilio, 
        :provincia_id, :localidad_id, :departamento_id, :telefono, :celular, :email,:origen_id,:has_dni,:fechanac,:profesion,
        :contactado, :afiliado, :adherido, :contactado_by_id, :afiliado_by_id, :adherido_by_id, :observaciones, :created_by_id, :updated_by_id)
    end
end
