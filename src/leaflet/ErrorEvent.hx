package leaflet;

typedef ErrorEvent = {
	var message : String;
	var code : Float;
	var type : String;
	var popup : Dynamic;
	var target : Dynamic;
	var sourceTarget : Dynamic;
	var propagatedFrom : Dynamic;
	var layer : Dynamic;
};