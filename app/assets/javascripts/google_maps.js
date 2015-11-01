$(document).ready(function() {
  handler = Gmaps.build('Google');
  handler.buildMap({internal: {id: 'mapa'}}, function(){
    if(navigator.geolocation)
      navigator.geolocation.getCurrentPosition(coordenadasMapa);
  });

  function coordenadasMapa(position){
    var marker = handler.addMarker({
      lat: position.coords.latitude,
      lng: position.coords.longitude
    });
    handler.map.centerOn(marker);
  }
});