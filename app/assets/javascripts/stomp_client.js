client = Stomp.client("ws://192.168.2.130:8675/" );
client.connect( 'username', 'password', function() {
});

  client.subscribe( '/queues/test_queue', function(message) {
    // received a message!
    message.body
    $("#container").append(message.body);
  } );

  client.send( "/queues/test_queue", { header1: 'Header 1' }, "this is the payload" );

  