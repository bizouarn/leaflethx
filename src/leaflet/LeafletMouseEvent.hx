package leaflet;

typedef LeafletMouseEvent = {
	var latlng : LatLng;
	var layerPoint : Point;
	var containerPoint : Point;
	var originalEvent : js.html.MouseEvent;
	var type : String;
	var popup : Dynamic;
	var target : Dynamic;
	var sourceTarget : Dynamic;
	var propagatedFrom : Dynamic;
	var layer : Dynamic;
};