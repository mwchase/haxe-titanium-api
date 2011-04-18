package titanium.mobile.ui.iphone;

/**
IPhoneRowAnimationStyle class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.iPhone.RowAnimationStyle-object

- namespace

Titanium.UI.iPhone.RowAnimationStyle

- type

proxy

- description

A set of constants for the Animation Styles used for transition on table view rows.

- since

0.9

- platforms

iphone, ipad

- properties

NONE[int]: No animation is performed. The new cell value appears as if the cell had just been reloaded.
LEFT[int]: The inserted row or rows slides in from the left; the deleted row or rows slides out to the left.
RIGHT[int]: The inserted row or rows slides in from the right; the deleted row or rows slides out to the right.
TOP[int]: The inserted row or rows slides in from the top; the deleted row or rows slides out toward the top.
BOTTOM[int]: The inserted row or rows slides in from the bottom; the deleted row or rows slides out toward the bottom.
FADE[int]: The inserted or deleted row or rows fades into or out of the table view.

**/
#if iphoneos

@:native("Titanium.UI.iPhone.RowAnimationStyle")
extern class IPhoneRowAnimationStyle
{
	// constants
	public static var BOTTOM:Int;
	public static var FADE:Int;
	public static var LEFT:Int;
	public static var NONE:Int;
	public static var RIGHT:Int;
	public static var TOP:Int;
}
#end