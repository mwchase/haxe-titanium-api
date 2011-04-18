package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;

/**
TabbedBar class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.TabbedBar-object.html

- namespace

Titanium.UI.TabbedBar

- type

object

- subtype

view

- description

A Tabbed Bar is created by the method `Titanium.UI.createTabbedBar`. The difference between the Tabbed Bar and the Button Bar is that the tabbed bar visually maintains a state (visually distinguished as a pressed or selected look).

- since

0.8

- platforms

iphone, ipad

- properties

backgroundColor[string]: the background color of the tabbed bar
index[int]: the selected index
style[int]: the style of the tabbed bar
labels[array]: the array of labels for the tabbed bar. each object should have the properties `title`, `image`, `width` and `enabled`.

- methods

- events

click: fired when a button on the tabbed bar is clicked

- event : click

index[int]: the index of the button that was clicked

- example : Simple Tabbed Bar with 3 items

~~~
var bb1 = Titanium.UI.createTabbedBar({
	labels:['One', 'Two', 'Three'],
	backgroundColor:'#336699',
	top:50,
	style:Titanium.UI.iPhone.SystemButtonStyle.BAR,
	height:25,
	width:200
});
win.add(bb1);
~~~

- notes

For iPhone, the style constants are available in the constants defined in [Titanium.UI.iPhone.SystemButtonStyle](Titanium.UI.iPhone.SystemButtonStyle).

**/

#if iphoneos

typedef TabbedBarClickEvent = 
{ > ClickEvent,
	index:Int
}

@:native("Titanium.UI.TabbedBar")
extern class TabbedBar extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):TabbedBar
		return titanium.mobile.UI.createTabbedBar(params)
		
	// events
	public static inline var CLICK_EVENT = "click";
	
	// properties
	public var index:Int;
	public var labels:Array<Dynamic>;
	public var style:Int;
}
#end










