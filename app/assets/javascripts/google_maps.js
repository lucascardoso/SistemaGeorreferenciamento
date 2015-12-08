$(document).ready(function() {
  handler = Gmaps.build('Google');
  handler.buildMap({internal: {id: 'mapa'}}, function(){
    if(gon.locais != null) {
      console.log(gon.locais);
      var markers = handler.addMarkers(gon.locais);
      handler.bounds.extendWith(markers);
      handler.fitMapToBounds();
      handler.getMap().setZoom(14);
    }
  });
});
