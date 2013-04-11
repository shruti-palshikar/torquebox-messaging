$(document).ready(function() {


var client = Stomp.client("ws://192.168.2.130:8675/");
console.log(client);

//client.connect( 'username', 'password', function() {
	var connect_callback=function()
	{
		console.log("success");
		client.subscribe("/stomplets/simple", function(message)
		 {
		 	console.log("hello");
        $("#container").append(message.body);
         console.debug(message);
        });

        //client.send("stomplet/simple",{header1: 'Header 1'}, "this is the payload");

	}

	var error_callback=function(error)
	{
          console.log(error);
	}
	client.connect("login", "passcode", connect_callback, error_callback);
});
	

	//client.subscribe('/stomplets/simple', function(message) {
    //console.log("received a message!");
    //console.log(message.body);
    //$("#container").append(message.body);
//});

//});


  //} );

  

  