package leaflet;

typedef PopupEvent = {
	var popup : Popup;
	var type : String;
	var target : Dynamic;
	var sourceTarget : Dynamic;
	var propagatedFrom : Dynamic;
	var layer : Dynamic;
};