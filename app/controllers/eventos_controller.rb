class EventosController < ApplicationController
  before_action :set_evento, except: [:index,:new,:create]
  def index
    @eventos = Evento.all
  end
  def new
    @evento = Evento.new
  end
  def create
    @evento = current_usuario.eventos.new(evento_params)
    if @evento.save
      redirect_to eventos_path, notice: "Evento creado"
    else
      render :new
    end
  end
  def show
      @hash = Gmaps4rails.build_markers(@evento) do |evento, marker|
      marker.lat evento.latitude
      marker.lng evento.longitude
      end
  end

  private
    def set_evento
      @evento = Evento.find(params[:id])
    end
    def evento_params
      params.require(:evento).permit(:name,:address,:fecha,:desc,:latitude,:longitude)
    end
end
