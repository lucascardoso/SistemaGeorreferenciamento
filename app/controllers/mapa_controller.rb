class MapaController < ApplicationController
  def index
    localizacoes = []
    Marcador.all.each do |marcador|
    	location = {}
    	location[:lat] = marcador.latitude
    	location[:lng] = marcador.longitude

    	localizacoes << location
    end
    gon.locais = localizacoes
  end
end
