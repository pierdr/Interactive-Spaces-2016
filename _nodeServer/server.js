
const vm = require('vm');
const https = require('https');
const http = require('http');
var concat = require('concat-stream');
var WebSocket = require('ws');


 //TRADITIONAL CLIENT
//var WebSocket = require('ws');
var client = new WebSocket('ws://192.168.1.156:9092');

client.on('open', function open() {
  client.send('{\"m\":\"makeVibrate\"}');
});

client.on('message', function(data, flags) {
  // flags.binary will be set if a binary data is received.
  // flags.masked will be set if the data was masked.
});
//*/
var WebSocketServer = require('ws').Server;
var server		= new WebSocketServer({port:9092});



server.on('connection', function(socket){


	console.log('connection open with %s',socket);
	
	socket.on('message',function(data){
		console.log(data);
		var message=JSON.parse(data);
		if(message["action"]=="haptics"){
			iphone.makeVibrate();
		}
	});	

});

server.on('message',function(){
	console.log('received: %s',message);
});
server.on('m',function(){
	console.log('received: %s',message);
});



