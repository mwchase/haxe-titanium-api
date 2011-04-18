package titanium.mobile.map;

import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;

/**
MapView class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Map.MapView-object.html

- namespace

Titanium.Map.MapView

- type

object

- subtype

view

- description

The MapView is an object created by [Titanium.Map.createView](Titanium.Map.createView) and is used for embedding native mapping capabilities as a view in your application.  With native maps, you can control the mapping location, the type of map, the zoom level and you can add custom annotations directly to the map.

- since

0.8

- platforms

android, iphone, ipad

- methods

zoom: zoom in or out of the map
selectAnnotation: cause the annotation to be selected (shown).
deselectAnnotation: cause the annotation to be deselected (hidden).
addAnnotation: add a new annotation to the map
addAnnotations: add one or more new annotation to the map
removeAnnotation: remove an existing annotation from the map
removeAnnotations: remove one or more existing annotations from the map
removeAllAnnotations: removes all annotations added to the map

# 1.4
addRoute: add a route. currently only supported on iphone
removeRoute: remove a previously added route. currently only supported on iphone

- method : addRoute

route[object]: dictionary with the properties: `name` route name, `points` dictionary of values with longitude and latitude keys, `color` for the line color and `width` for the line width.  

- method : removeRoute

route[object]: same route object used during addRoute

- method : addAnnotation

annotation[object]: either a dictionary of properties for the annotation or a [Titanium.Map.Annotation](Titanium.Map.Annotation) instance.

- method : addAnnotations

annotations[array]: an array of either a dictionary of properties for the annotation or a [Titanium.Map.Annotation](Titanium.Map.Annotation) instance.

- method : removeAnnotation

annotation[string,object]: either a string of the annotation title or a [Titanium.Map.Annotation](Titanium.Map.Annotation) reference.

- method : removeAnnotations

annotation[array]: an array of either a string of the annotation title or a [Titanium.Map.Annotation](Titanium.Map.Annotation) reference.

- method : selectAnnotation

annotation[string,object]: either a string of the annotation title or a [Titanium.Map.Annotation](Titanium.Map.Annotation) reference.

- method : deselectAnnotation

annotation[string,object]: either a string of the annotation title or a [Titanium.Map.Annotation](Titanium.Map.Annotation) reference.

- method : zoom

level[double]: zoom level (can be positive or negative)

- properties

mapType[int]: the map type constant of either `Titanium.Map.STANDARD_TYPE`, `Titanium.Map.SATELLITE_TYPE` or `Titanium.Map.HYBRID_TYPE`.
region[object]: a dictionary that specifies the following properties specifying the region location to set the map: `latitudeDelta`, `longitudeDelta`, `latitude`, `longitude`.
animate[boolean]: boolean is mapping actions should be animated
regionFit[boolean]: boolean to indicate if the map should attempt to fit the map view into the region in the visible view
userLocation[boolean]: boolean to indicate if the map should show the user's current device location as a pin on the map
location[object]: a dictionary that specifies the following properties specifying the region location to set the map: `latitudeDelta`, `longitudeDelta`, `latitude`, `longitude`.
annotations[array]: an array of annotations to add to the map

- events

regionChanged: fired when the mapping region changes
loading: fired when the map begins loading
complete: fired when the map completes loading
error: fired when the map receives a mapping error
click: fired when a map view or annotation is touched

- event : regionChanged

latitude: the new latitude
longitude: the new longitude
latitudeDelta: the new latitude delta
longitudeDelta: the new longitude delta

- event : error 

message: the error message

- event : click

clicksource: the source of either `annotation`, `leftButton` or `rightButton` to indicate to location of the click
annotation: the announce source object
index: the annotation index
title: the annotation title
map: the map view instance


- notes

For Android, you will need to <a href="http://code.google.com/android/maps-api-signup.html">obtain a map key from Google</a> to use maps in your application.  On iPhone, you cannot call any methods on a map view until it has been added to a view.


**/

typedef MapViewClickEvent = 
{ > TouchEvent,
	annotation:MapAnnotation,
	clicksource:String,
	index:Int,
	map:MapView,
	title:String
}

typedef MapViewErrorEvent = 
{ > Event,
	message:String
}

@:native("Titanium.Map.MapView")
extern class MapView extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):MapView
		return titanium.mobile.Map.createMapView(params)
		
	// events
	public static inline var MAP_CLICK_EVENT:String = "click";
	public static inline var ERROR_EVENT:String = "error";
	public static inline var COMPLETE_EVENT:String = "loading";
	public static inline var LOADING_EVENT:String = "loading";
	public static inline var REGION_CHANGED_EVENT:String = "regionChanged";
	
	// properties
	public var annotations:Array<MapAnnotation>;
	public var location:Dynamic;
	public var mapType:Int;
	public var region:Dynamic;
	public var regionFit:Bool;
	public var userLocation:Bool;
	
	// methods
	public function addAnnotation(annotation:Dynamic):Void;
	public function addAnnotations(annotations:Dynamic):Void;
	public function addRoute(route:Dynamic):Void;
	public function deselectAnnotation(annotation:Dynamic):Void;
	public function removeAnnotation(annotation:Dynamic):Void;
	public function removeAnnotations(annotations:Dynamic):Void;
	public function removeAllAnnotations():Void;
	#if iphoneos
	public function removeRoute(route:Dynamic):Void;
	#end
	public function selectAnnotation(annotation:Dynamic):Void;
	public function zoom(level:Float):Void;
}