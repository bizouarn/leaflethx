package leaflet;

typedef TooltipEvent = {
	var tooltip : Tooltip;
	var type : String;
	var popup : Dynamic;
	var target : Dynamic;
	var sourceTarget : Dynamic;
	var propagatedFrom : Dynamic;
	var layer : Dynamic;
};