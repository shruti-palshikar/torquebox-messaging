client = Stomp.client( "ws://192.168.2.130:8675/" );
client.connect( 'username', 'password', function() {
});
  client.subscribe( '/queues/test_queue', function(message) {
    // received a message!
    message.body
  } );

  