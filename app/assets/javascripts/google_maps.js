$(document).ready(function() {

  handler = Gmaps.build('Google');
  handler.buildMap({internal: {id: 'mapa'}}, function(){
    if(gon.locais != null)
      coordenadasMapa(gon.locais);
  });

  function coordenadasMapa(locais){
    console.log(locais);
    var markers = handler.addMarkers(locais);
    handler.bounds.extendWith(markers);
    handler.fitMapToBounds();
    handler.getMap().setZoom(14);
  }
});