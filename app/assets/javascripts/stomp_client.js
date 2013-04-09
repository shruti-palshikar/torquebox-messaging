client = Stomp.client( "ws://localhost:8675/" );
client.connect( 'username', 'password', function() {
});
  client.subscribe( '/queues/test_queue', function(message) {
    // received a message!
    message.body
  } );

  