class UsuariosController < ApplicationController
  before_action :set_usuario, only: [:show, :update, :destroy]

  # GET /usuarios
  def index
    @usuarios = Usuario.where(activo: true).where.not(id: 1).order(:id)

    render json: @usuarios
  end

  # GET /usuarios/1
  def show
    render json: @usuario
  end

  # POST /usuarios
  def create
    @usuario = Usuario.new(usuario_params)
    @usuario.password = params[:password]
    @usuario.password_confirmation = params[:password_confirmation]
    if @usuario.save
      render json: @usuario, status: :created, location: @usuario
    else
      puts  @usuario.errors.full_messages
      render json: @usuario.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /usuarios/1
  def update
    if @usuario.update(usuario_params)
      render json: @usuario
    else
      render json: @usuario.errors, status: :unprocessable_entity
    end
  end

  # DELETE /usuarios/1
  def destroy
    @usuario.update(activo: false)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def usuario_params
      params.require(:usuario).permit(:login,:dni,:nombre,:email,:telefono,:sexo,:rol_id,:provincia_id,:departamento_id,:localidad_id,:password, :password_confirmation)
    end
end
