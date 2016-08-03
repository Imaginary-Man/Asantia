var fs = require('fs');
var net = require('net');

eval(fs.readFileSync('sources/hybridnetwork.js')+'');
console.log("Load: hybridnetwork.js");

eval(fs.readFileSync('profile.js')+'');
eval(fs.readFileSync('player.js')+'');

loginserver_socket_object = function(){
	this.onconnect = function(object){
		console.log("Player tries to connect to the server")
		
		var message = new hnet.message(14);
		message.write_byte(5);
		message.write_string("Dig your own hole!");
		message.write_byte16(1337);
		message.send(object);
	}
	this.ondisconnect = function(object){

	}
	this.receive = function(object, package_id, buffer){
		switch(package_id){
			case 12://Player Login Temporary Function
				//console.log(hnet.read(buffer));
				console.log("Found something:");
				console.log(buffer.read());
				console.log(buffer.read());
			break;
		}
	}
}

hnet.create_server(8033, loginserver_socket_object);

//Commands
/*process.stdin.resume();
process.stdin.setEncoding("utf8");
process.stdin.on("data", function(input){
	var data = input.replace("\n", "").replace("\r", "").split(" ");
		switch(data[0]){
			case "test":
			break;
			case "destroy":
				n2nnode.object.broadcast(new Array(41, 1010));
			break;
			case "move":
				n2nnode.object.broadcast(new Array(42, 1010, 0, -2.3, 0));
			break;
		}
});*/