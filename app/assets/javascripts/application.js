// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .






function initMap() {
  var map;
  var bounds = new google.maps.LatLngBounds();
  var markers = [];
  var myLatLng = {lat: 45.558217, lng: -122.643122};

  map = new google.maps.Map(document.getElementById('map-canvas'), {
  center: {lat: 45.558217, lng: -122.643122},
  zoom: 12
  });

  var markers = [
       ['London Eye, London', 45.560226,-122.635818],
       ['Palace of Westminster, London', 45.562990, -122.635539],
   ]

  for (var i = 0; i < markers.length; i++ ) {
       var position = new google.maps.LatLng(markers[i][1], markers[i][2]);
       bounds.extend(position);
       marker = new google.maps.Marker({
           position: position,
           map: map,
           title: markers[i][0]
       });
     }
  map.fitBounds(bounds);

}


function loadScript() {
  var script = document.createElement('script');
  script.type = 'text/javascript';
  script.src = 'https://maps.googleapis.com/maps/api/js?v=3.exp' +
    '&libraries=drawing,places';
  document.body.appendChild(script);
}
