# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


vclient = Stomp.client( "ws://192.168.0.101:8675/" );
client.connect( 'username', 'password', function() {
  client.subscribe( '/stomplets/test_queue_stomplet', function(message) {
    // received a message!
  } );

  client.send( '/stomplets/test_queue_stomplet', 
               'test queue message' );
} );