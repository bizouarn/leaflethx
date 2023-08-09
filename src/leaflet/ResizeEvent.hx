package leaflet;

typedef ResizeEvent = {
	var oldSize : Point;
	var newSize : Point;
	var type : String;
	var popup : Dynamic;
	var target : Dynamic;
	var sourceTarget : Dynamic;
	var propagatedFrom : Dynamic;
	var layer : Dynamic;
};