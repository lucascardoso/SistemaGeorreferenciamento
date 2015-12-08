#encoding: utf-8
class MapaController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def index
    localizacoes = []
    Marcador.all.each do |marcador|
      puts ">>>>>>>>>>>>>>>>>>>>>>>"
      puts marcador
    	location = {}
    	location[:lat] = marcador.latitude.gsub(',', '.').to_f
    	location[:lng] = marcador.longitude.gsub(',', '.').to_f

      if (marcador.status == "local_propicio")
        location[:title] = "Local propício a dengue"
        location[:infowindow] = "Local com grandes possibilidades de servir como criadouro do mosquito"
        location[:picture] = {url: "/assets/marker_azul.png", width:  32, height: 32} 
      else
        location[:title] = "Local com dengue"
        location[:infowindow] = "Local com a presença do mosquito da dengue"
        location[:picture] = {url: "/assets/marker_vermelho.png", width:  32, height: 32}
      end

    	localizacoes << location
    end
    gon.locais = localizacoes
    gon.locais.to_json
  end

 def criar_marcador
   puts params
	Marcador.create(latitude: params[:lat], longitude: params[:lng], status: params[:status])
	render text: params
 end

 def pesquisar_local
 	
 end
end
