//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require cable
//= require channels/map

var left  = 37;
var up    = 38;
var right = 39;
var down  = 40;
$( function() {
  $(document).on('keyup', function(e) {
    switch (e.keyCode) {
      case left:
        App.map.move('left'); break;
      case up:
        App.map.move('up'); break;
      case right:
        App.map.move('right'); break;
      case down:
        App.map.move('down'); break;
    }
  } );
} );
