$(document).ready(function() {
  
  console.log(gon.marcadores);
  console.log(gon.marcadores[0].latitude);
  handler = Gmaps.build('Google');
  handler.buildMap({internal: {id: 'mapa'}}, function(){
    //if(navigator.geolocation)
      //navigator.geolocation.getCurrentPosition(coordenadasMapa);
    for (var i = 0; i < gon.marcadores.length; i++) {
      coordenadasMapa(gon.marcadores[i].latitude, gon.marcadores[i].longitude)
    };
  });

  function coordenadasMapa(latitude, longitude){
    var marker = handler.addMarker({
      lat: latitude,
      lng: longitude
    });
    handler.map.centerOn(marker);
  }
});