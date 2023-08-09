package leaflet;

typedef ZoomAnimEvent = {
	var center : LatLng;
	var zoom : Float;
	var noUpdate : Bool;
	var type : String;
	var popup : Dynamic;
	var target : Dynamic;
	var sourceTarget : Dynamic;
	var propagatedFrom : Dynamic;
	var layer : Dynamic;
};