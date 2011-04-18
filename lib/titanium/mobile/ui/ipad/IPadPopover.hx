package titanium.mobile.ui.ipad;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;

/**
IPadPopover class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.iPad.Popover-object.html

- namespace

Titanium.UI.iPad.Popover

- type

object

- subtype

view

- description

A Popover is used to manage the presentation of content in a popover. You use popovers to present information temporarily but in a way that does not take over the entire screen like a modal view does. The popover content is layered on top of your existing content in a special type of window. The popover remains visible until the user taps outside of the popover window or you explicitly dismiss it. The Popover is created by the method [[Titanium.UI.iPad.createPopover]].

![popover](http://img.skitch.com/20100406-pmssjk1a3a65s6ui8qnbqi59c4.png)

- since

1.2

- platforms

ipad

- properties

width[float]: width of the popover
height[float]: height of the popover
visible[boolean]: boolean to indicate if the popover is visible
title[string]: the title of the nav area of the popover
leftNavButton[object]: the left button in the nav area of the popover
rightNavButton[object]:the right button in the nav area of the popover
arrowDirection[int]: return the arrow direction of the popover

- methods 

show: show the popover
hide: hide the popover
setWidth: change the width of the popover
setHeight: change the height of the popover

- method : show

options[object]: dictionary of the following properties: `rect`, `animated` and `view`. The `view` property should specify the view relative to where the popover should display.  `animated` is a boolean indicating if the showing of the popover should be animated, defaults to true. The property `rect` is a dictionary with the following properties: `x`, `y`, `width` and `height`, where the rectangle in `view` at which to anchor the popover.

- method : hide

options[object]: dictionary with optional boolean property `animated` which indicates if the popover should be hidden with animation (defaults to true) or not

- method : setWidth

width[int,string]: width of the popover

- method : setHeight

height[int,string]: height of the popover

- events

hide: fired when the popover is hidden

- event : hide

- example : Simple Popover

In this example, we create a simple popover and position it near the button

~~~
var popover = Ti.UI.iPad.createPopover({height:100,width:100});
popover.add(view);
popover.show({view:button});
~~~


- example : Popover with title and nav button

In this example, we create a popover with a title and right navigation button.

~~~
var popover = Ti.UI.iPad.createPopover({ 
	width:250, 
	height:100,
	title: "Yo Yo",
	rightNavButton:button
});
~~~


**/
#if iphoneos

typedef IPadPopoverHideEvent = 
{ > Event,
}

@:native("Titanium.UI.iPad.Popover")
extern class IPadPopover extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):IPadPopover
		return titanium.mobile.UIiPad.createPopover(params)
		
	// events
	public inline static var HIDE_EVENT:String = "hide";
	
	// properties
	public var arrowDirection:Int;
	public var leftNavButton:Dynamic;
	public var rightNavButton:Dynamic;
	public var title:String;
	
	// methods
	public function setWidth(width:Dynamic):Void;
	public function setHeight(height:Dynamic):Void;
}
#end