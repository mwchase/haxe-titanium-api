package titanium.mobile.ui.ipad;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;

/**
IPadSplitWindow class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.iPad.SplitWindow-object

- namespace

Titanium.UI.iPad.SplitWindow

- type

object

- subtype

view

- description

A SplitWindow is a window that manages the presentation of two side-by-side view controllers. You use this class to implement a master-detail interface, in which the left-side view presents a list of items and the right-side presents details of the selected item. The SplitView is for use exclusively on iPad devices. The SplitWindow is created by the method [[Titanium.UI.iPad.createSplitWindow]].

![splitview](http://img.skitch.com/20100406-1f85bm9cx8t768xgsjqax1ng6y.png)

- since

1.2

- platforms

ipad


- properties

masterView[object]: view for the master view section of the SplitWindow
detailView[object]: view for the detail view section of the SplitWindow

- events

visible: fired when the masterView or detailView becomes visible.

- event : visible

view: the type of view becoming visible. either `master`, `popover` or `detail`.
popover: for either `popover` or `detail` view types, the popover instance
button: for `view` view type, the button that is automatically wired to control the master view popover

- notes

The SplitWindow inherits its methods and properties from [[Titanium.UI.Window]].

The `masterView` and `detailView` properties are required in the constructor of the SplitWindow and cannot be changed once set.

The SplitWindow is a top-level window and cannot be contained within another window or view.  



- example : Split Window Example

This is an example of a Split Window.

~~~
var win = Ti.UI.createWindow();

var nav = Ti.UI.iPhone.createNavigationGroup({
   window: win
});

var splitwin = Ti.UI.iPad.createSplitWindow({
	detailView:nav,
	masterView:masterView
});

splitwin.addEventListener('visible',function(e)
{
	if (e.view == 'detail')
	{
		e.button.title = "Master";
		win.leftNavButton = e.button;
	}
	else if (e.view == 'master')
	{
		win.leftNavButton = null;
	}
});

splitwin.open();
~~~


**/
#if iphoneos

typedef IPadSplitWindowVisibleEvent = 
{ > Event,
	button:Dynamic,
	popover:IPadPopover,
	view:String
}

@:native("Titanium.UI.iPad.SplitWindow")
extern class IPadSplitWindow extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):IPadSplitWindow
		return titanium.mobile.UIiPad.createSplitWindow(params)
		
	// events
	public inline static var VISIBLE_EVENT:String = "visible";
	
	// properties
	public var detailView:Dynamic;
	public var masterView:Dynamic;
}
#end