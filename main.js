(function ($global) { "use strict";
var example_Main = function() { };
example_Main.main = function() {
	var map = L.map("map").setView([51.505,-0.09],13);
	L.tileLayer("https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",{ attribution : "&copy; <a href=\"https://www.openstreetmap.org/copyright\">OpenStreetMap</a> contributors"}).addTo(map);
	L.marker([51.505,-0.09]).addTo(map).bindPopup("A pretty CSS3 popup.<br> Easily customizable.").openPopup();
};
var haxe_iterators_ArrayIterator = function(array) {
	this.current = 0;
	this.array = array;
};
haxe_iterators_ArrayIterator.prototype = {
	hasNext: function() {
		return this.current < this.array.length;
	}
	,next: function() {
		return this.array[this.current++];
	}
};
example_Main.main();
})({});
