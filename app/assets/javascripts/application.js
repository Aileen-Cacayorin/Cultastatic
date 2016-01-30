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



var map;

function initMap(locations) {
  debugger;
  var locations;
  locations = locations.replace(/&quot;/g, '"'); //gets Cannot read property 'replace' of undefined error/
  new_locations = JSON.parse(locations);
  console.log(new_locations);


  var bounds;
  bounds = new google.maps.LatLngBounds();
  map = new google.maps.Map(document.getElementById('map-canvas'), {
  center: {lat: 45.558217, lng: -122.643122},
  zoom: 12
  });


  var markers = [];
  new_locations.forEach(function(location) {
    var address = [];
    address.push(location.name),
    address.push(location.latitude);
    address.push(location.longitude);
    markers.push(address);
  });
  console.log(markers)

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
