$( function() {
  App.map = App.cable.subscriptions.create({
    channel: "MapChannel"
  }, {
    connected: function() {},
    disconnected: function() {},
    received: function(data) {
      updatePlayers(data['players'])
    },
    move: function(direction) {
      return this.perform('move', { direction: direction })
    }
  });

  var $map = $('.map');

  function updatePlayers(players) {
    $map.find('td').html('');
    for ( var i = 0; i < players.length; ++i ) {
      var $cell = $map.find('tr').eq(players[i].y_pos).find('td').eq(players[i].x_pos);
      $cell.html('<span style="color: ' + players[i].background + '">&#9608;</span>');
    }
  }
} );
