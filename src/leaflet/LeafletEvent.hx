package leaflet;

typedef LeafletEvent = {
	var type : String;
	var popup : Dynamic;
	var target : Dynamic;
	var sourceTarget : Dynamic;
	var propagatedFrom : Dynamic;
	var layer : Dynamic;
};