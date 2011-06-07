package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;

/**
ScrollableView class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.ScrollableView-object.html

- namespace

Titanium.UI.ScrollableView

- type

object

- subtype

view

- description

The Scrollable View provides a view that supports horizontal scrolling on one or more views in a gesture motion.  The Scrollable View also optionally supports a visual paging control to indicate the page that the view is visible. The Scrollable View is created by the method `Titanium.UI.createScrollableView`.

- since

0.8

- platforms

android, iphone, ipad

- properties

views[array]: array of view objects to place in the view
showPagingControl[boolean]: boolean to indicate whether the paging control UI is visible
pagingControlHeight[float]: the height in pixels of the paging control, if visible. defaults to 20
pagingControlColor[string]: the color of the paging control. defaults to black.
currentPage[int]: the current page visible in the view
maxZoomScale[float]: the maximum zoom scale for the view
minZoomScale[float]: the minimum zoom scale for the view

- methods

scrollToView: scroll to a specific view
addView: add a new view to the Scrollable View
removeView: remove an existing view from the Scrollable View

- method : scrollToView

view[int,object]: either an integer index or the view object to bring into view as the currentPage

- method : addView

view[object]: the view to add

- method : removeView

view[object]: the view to remove

- events

click: fired when the page control is touched
scroll: fired when the scroll view is scrolled

- event : click

currentPage: the current page index
view: the current page view

- event : scroll

currentPage: the current page index
view: the current page view

- example : Simple Scrollable View with 3 Views

Create three views and place each into a scrollable view.

~~~
var view1 = Titanium.UI.createView({backgroundColor:'#123'});
var view2 = Titanium.UI.createView({backgroundColor:'#123'});
var view3 = Titanium.UI.createView({backgroundColor:'#123'});
var scrollView = Titanium.UI.createScrollableView({
	views:[view1,view2,view3],
	showPagingControl:true
});
win.add(scrollView);
~~~

**/


typedef ScrollableViewScrollEvent = 
{ > Event,
	currentPage:Int,
	view:View
}

@:native("Titanium.UI.ScrollableView")
extern class ScrollableView extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):ScrollableView
		return titanium.mobile.UI.createScrollableView(params)
		
	// events
	public static inline var SCROLL_EVENT = "scroll";
	
	// properties
	#if iphoneos
	public var cacheSize:Int;
	#end
	public var currentPage:Int;
	public var minZoomScale:Float;
	public var maxZoomScale:Float;
	public var pagingControlColor:String;
	public var pagingControlHeight:Float;
	public var showPagingControl:Bool;
	public var views:Array<View>;
	
	// methods
	public function scrollToView(view:View):Void;
	public function  addView(view:View):Void;
	public function  removeView(view:View):Void;
}