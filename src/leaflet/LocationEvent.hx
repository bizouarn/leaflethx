package leaflet;

typedef LocationEvent = {
	var latlng : LatLng;
	var bounds : LatLngBounds;
	var accuracy : Float;
	var altitude : Float;
	var altitudeAccuracy : Float;
	var heading : Float;
	var speed : Float;
	var timestamp : Float;
	var type : String;
	var popup : Dynamic;
	var target : Dynamic;
	var sourceTarget : Dynamic;
	var propagatedFrom : Dynamic;
	var layer : Dynamic;
};