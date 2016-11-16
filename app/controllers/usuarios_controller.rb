class UsuariosController < ApplicationController
  def new
    @usuario = Usuario.new
  end
  def create
    @usuario = Usuario.new(usuario_params)
    if @usuario.save
      session[:usuario_id] = @usuario.id
      redirect_to root_url, notice: "Thank you for sign"
    else
      render :new
    end
  end

  private
    def usuario_params
      params.require(:usuario).permit(:name,:email,:password,:password_confirmation,:tipo)
    end
end
