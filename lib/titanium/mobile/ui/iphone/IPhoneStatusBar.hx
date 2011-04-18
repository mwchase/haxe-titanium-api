package titanium.mobile.ui.iphone;

/**
IPhoneStatusBar class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.iPhone.StatusBar-object

- namespace

Titanium.UI.iPhone.StatusBar

- type

proxy

- description

A set of constants for the status bar style.

- since

0.9

- platforms

iphone, ipad

- properties

DEFAULT[int]: The default status bar style
GRAY[int]: The gray colored status bar style
OPAQUE_BLACK[int]: The opaque black status bar style.
TRANSLUCENT_BLACK[int]: The translucent black status bar style. This style provides some level of transparency to the device background.

**/
#if iphoneos

@:native("Titanium.UI.iPhone.StatusBar")
extern class IPhoneStatusBar
{
	// constants
	public static var DEFAULT:Int;
	public static var GRAY:Int;
	public static var OPAQUE_BLACK:Int;
	public static var TRANSLUCENT_BLACK:Int;
}
#end