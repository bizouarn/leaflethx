package leaflet;

typedef LayersControlEvent = {
	var name : String;
	var layer : Layer;
	var type : String;
	var popup : Dynamic;
	var target : Dynamic;
	var sourceTarget : Dynamic;
	var propagatedFrom : Dynamic;
};