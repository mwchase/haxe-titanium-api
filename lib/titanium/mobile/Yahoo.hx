package titanium.mobile;

/**
Yahoo class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Yahoo-module

- namespace

Titanium.Yahoo

- type

module

- description

The top level Yahoo module.  The Yahoo module is used for accessing Yahoo related API services.

- since

0.8

- platforms

android, iphone, ipad


- methods

yql: invoke a Yahoo YQL query

- method : yql

yql[string]: the YQL query to execute
callback[function]: the function to execute when the query completes. The event will contain the boolean property `success` if successful. If `success` is false, the `message` property will contain the error message. If `success` is true, the `data` property will contain the data payload received from the YQL.

**/

@:native("Titanium.Yahoo")
extern class Yahoo
{
	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;
	
	public static function yql(yql:String, callBack:Dynamic->Void):Void;
}