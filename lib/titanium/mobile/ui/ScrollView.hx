package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;

/**
ScrollView class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.ScrollView-object.html

- namespace

Titanium.UI.ScrollView

- type

object

- subtype

view

- description

A Scroll View is used to create a scrollable region of content.  Views added to the Scroll View will be scrolled based on the content size of the Scroll View. The Scroll View is created by the method `Titanium.UI.createScrollView`. Note: In Android, Scroll Views can only scroll in one direction, either vertical or horizontal, but not both at the same time. See the `Titanium.UI.ScrollView.scrollType` property

- since

0.9

- platforms

android, iphone, ipad

- properties

contentWidth[float]: the width of the scrollable area
contentHeight[float]: the height of the scrollable area
showHorizontalScrollIndicator[boolean]: boolean to indicate whether the horizontal scroll indicator is visible
showVerticalScrollIndicator[boolean]: boolean to indicate whether the vertical scroll indicator is visible
disableBounce[boolean]: boolean to control bounce during scrolling
horizontalBounce[boolean]: boolean to control the horizontal bounce during scrolling
verticalBounce[boolean]: boolean to control the vertical bounce during scrolling
contentOffset[object]: an object (with x and y properties) to indicate the offset of the content area
zoomScale[float]: set the zoom scale for the current content area
maxZoomScale[float]: the maximum scale of the content
minZoomScale[float]: the minimum scale of the content
scrollType[string]: (Android only) the type of ScrollView: "vertical" or "horizontal"
canCancelEvents[boolean]: (iPhone only) boolean to indicate if the scroll view can cancel subview touches in order to scroll instead. Default of true

- methods

scrollTo: scrollTo a particular point

- method : scrollTo

x[float]: the x point within the view
y[float]: the y point within the view

- events

scale: fired when the zoom scale factor changes
scroll: fired when the view is scrolled

- event : scale

scale: the new scale as a float

- event : scroll

x: the new x location
y: the new y location
decelerating: boolean to indicate if the scroll is decelerating
dragging: boolean to indicate if the scroll is based on a dragging gesture

- example : Simple Scroll View

Create a scroll view with content.

~~~
var scrollView = Titanium.UI.createScrollView({
	contentWidth:'auto',
	contentHeight:'auto',
	top:0,
	showVerticalScrollIndicator:true,
	showHorizontalScrollIndicator:true
});
var view = Ti.UI.createView({
	backgroundColor:'#336699',
	borderRadius:10,
	width:300,
	height:2000,
	top:10
});
scrollView.add(view);
Titanium.UI.currentWindow.add(scrollView);
~~~

- notes

If your scrollable region fits within the size of the content area the scroll view will not scroll.


**/


typedef ScrollViewScaleEvent = 
{ > Event,
	scale:Float
}

typedef ScrollViewScrollEvent = 
{ > Event,
	decelerating:Bool,
	dragging:Bool,
	x:Float,
	y:Float
}

@:native("Titanium.UI.ScrollView")
extern class ScrollView extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):ScrollView
		return titanium.mobile.UI.createScrollView(params)
		
	// events
	public static inline var SCALE_EVENT = "scale";
	public static inline var SCROLL_EVENT = "scroll";
	
	// properties
	#if iphoneos
	public var canCancelEvents:Bool;
	#end
	public var contentWidth:Float;
	public var contentHeight:Float;
	public var contentOffset:Float;
	public var disableBounce:Bool;
	public var horizontalBounce:Bool;
	public var verticalBounce:Bool;
	public var minZoomScale:Float;
	public var maxZoomScale:Float;
	#if androidos
	public var scrollType:String;
	#end
	public var showHorizontalScrollIndicator:Bool;
	public var showVerticalScrollIndicator:Bool;
	public var zoomScale:Float;
	
	// methods
	public function scrollTo(x:Float, y:Float):Void;
}