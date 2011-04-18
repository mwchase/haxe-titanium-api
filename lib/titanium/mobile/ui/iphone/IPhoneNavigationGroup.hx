package titanium.mobile.ui.iphone;
import titanium.mobile.core.BaseView;
import titanium.mobile.ui.Window;

/**
IPhoneNavigationGroup class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.iPhone.NavigationGroup-object

- namespace

Titanium.UI.iPhone.NavigationGroup

- type

object

- subtype

view

- description

A Navigation Group implements a specialized view that manages the navigation of hierarchical content. The Navigation Group is created by the method [[Titanium.UI.iPhone.NavigationGroup]].

![navgroup](http://img.skitch.com/20100406-rwe44533tkd94fdnbqqudxynpe.png)

A Navigation Group is very similar to Tab Bars with the exception that they do not maintain a group of windows with a interface bar at the bottom.

- since

1.2

- platforms

iphone, ipad

- properties

- methods

open: open a window within the navigation group
close: close a window and remove it from the navigation group

- method : open

window[object]: window to open within the tab group
properties[object]: optional dictionary. the only current property supported is `animated` which is a boolean to indicate if the window should be opened animated (default) or not.

- method : close

window[object]: window to close
properties[object]: optional dictionary. the only current property supported is `animated` which is a boolean to indicate if the window should be closed animated (default) or not.

- notes

The `window` property must be set initially in the constructor when creating a navigation group to the root level window.  All Navigation Groups must have at least one root window that cannot be removed.

- example : Simple Navigation Group

In this example, we open 2 windows in a navigation group.  When you run this, the initial window \
should be blue.  When you click the back button, you should see a window that should be red.

~~~
var win = Titanium.UI.createWindow();
var win1 = Titanium.UI.createWindow({
	backgroundColor:"red",
	title:"Red Window"
});
var nav = Titanium.UI.iPhone.createNavigationGroup({
   window: win1
});
win.add(nav);
win.open();
var win2 = Titanium.UI.createWindow({
	backgroundColor:"blue",
	title:"Blue Window"
});
nav.open(win2,{animated:true});
~~~

**/
#if iphoneos

@:native("Titanium.UI.iPhone.NavigationGroup")
extern class IPhoneNavigationGroup extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):IPhoneNavigationGroup
		return titanium.mobile.UIiPhone.createNavigationGroup(params)
		
	// methods
	public function open(window:Window, ?props:Dynamic):Void;
	public function close(window:Window, ?props:Dynamic):Void;
}
#end