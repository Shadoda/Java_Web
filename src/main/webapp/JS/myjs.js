window.onload = function() {
	console.log("onload");
	let start = document.getElementById('start');
	let mesgDiv = document.getElementById('mesgDiv');
	let mesg = document.getElementById('mesg');
	let send = document.getElementById('send');
	let log = document.getElementById('log');

	let webSocket;
	
	start.addEventListener("click", function() {
		connect();
	});

	start.style.display = "block";
	mesgDiv.style.display = "none";

	function connect() {
		console.log("connecting...");
		webSocket = new WebSocket("ws://localhost:8080/WEB/myserver");
		webSocket.onerror = function(event){
			console.log("ERROR");
		};
		webSocket.onopen = function(event){
			console.log("opened");
		};
	}

}