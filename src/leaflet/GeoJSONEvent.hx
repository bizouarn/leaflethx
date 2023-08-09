package leaflet;

typedef GeoJSONEvent = {
	var layer : Layer;
	var properties : Dynamic;
	var geometryType : String;
	var id : String;
	var type : String;
	var popup : Dynamic;
	var target : Dynamic;
	var sourceTarget : Dynamic;
	var propagatedFrom : Dynamic;
};