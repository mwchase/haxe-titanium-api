package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;

/**
Tab class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.Tab-object.html

- namespace

Titanium.UI.Tab

- type

object

- subtype

view

- description

A TabGroup Tab instance.  Each Tab instance maintains a stack of tab windows. Only one window \
within in the Tab can be visible at a time.  When a window is closed, either by the user or \
by code, the window is removed from the stack, make the previous window visible. The root tab \
window cannot be removed. The Tab Group is created by the method `Titanium.UI.createTab`.

- since

0.8

- platforms

android, iphone, ipad

- properties

window[object]: the root level tab window.  all tabs must have at least one root level tab window.
title[string]: the title for the tab group for this tab
icon[string]: the icon url for the tab group for this tab
badge[string]: the badge value for the tab group for this tab. null indicates no badge is value

- methods

- events

- example : Simple Tab Example

In this example, we create a simple tab and add it to a tab group.

~~~
var tab = Titanium.UI.createTab({
	window:mywin,
	title:'Hello',
	icon:'myicon.png'
});
tabGroup.addTab(tab);
~~~

- notes


**/

@:native("Titanium.UI.Tab")
extern class Tab extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):Tab
		return titanium.mobile.UI.createTab(params)
		
	// properties
	public var badge:String;
	public var icon:String;
	public var title:String;
	public var window:Window;
}










