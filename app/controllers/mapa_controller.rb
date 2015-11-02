#encoding: utf-8
class MapaController < ApplicationController
  def index
    localizacoes = []
    Marcador.all.each do |marcador|
    	location = {}
    	location[:lat] = marcador.latitude.gsub(',', '.').to_f
    	location[:lng] = marcador.longitude.gsub(',', '.').to_f
        location[:infowindow] = "Posição"

    	localizacoes << location
    end
    gon.locais = localizacoes
    gon.lcois.to_json
  end


end
