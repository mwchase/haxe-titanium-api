package titanium.mobile.ui.iphone;

/**
TableViewCellSelectionStyle class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.iPhone.TableViewCellSelectionStyle-object

- namespace

Titanium.UI.iPhone.TableViewCellSelectionStyle

- type

proxy

- description

A set of constants for the style that can be used for the `selectionStyle` property of [[Titanium.UI.TableViewRow]].

- since

0.9

- platforms

iphone, ipad

- properties

NONE[int]: The cell has no distinct style for when it is selected.
BLUE[int]: The cell when selected has a blue background. This is the default value.
GRAY[int]: Then cell when selected has a gray background.

**/
#if iphoneos

@:native("Titanium.UI.iPhone.TableViewCellSelectionStyle")
extern class IPhoneTableViewCellSelectionStyle
{
	// constants
	public static var BLUE:Int;
	public static var GRAY:Int;
	public static var NONE:Int;
}
#end