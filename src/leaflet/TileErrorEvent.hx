package leaflet;

typedef TileErrorEvent = {
	var error : js.lib.Error;
	var tile : js.html.ImageElement;
	var coords : Coords;
	var type : String;
	var popup : Dynamic;
	var target : Dynamic;
	var sourceTarget : Dynamic;
	var propagatedFrom : Dynamic;
	var layer : Dynamic;
};