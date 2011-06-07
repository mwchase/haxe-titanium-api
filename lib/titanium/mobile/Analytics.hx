package titanium.mobile;

/**
Analytics class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Analytics-module

- namespace

Titanium.Analytics

- type

module

- returns

object

- description

The top level Analytics module.  The Analytics module is used for transmitting developer-defined \
Analytics event for your application to the Appcelerator Analytics product. It can be used to \
augment additional context or application-specific information which can then be accessed during \
analysis using Analytics.

- since

0.1

- platforms

android, iphone, ipad

- methods

featureEvent: send an analytics feature event for the application session
settingsEvent: send a analytics settings event for the application session
userEvent: send an analytics user event for the application session
timedEvent: send an analytics timed event for the application session
navEvent: send an analytics nav event for the application session
addEvent: send a generic event for the application session

- method : addEvent

type[string] : the event type
name[string] : the event name
data[object] : event data or null if not specified. the object must be serializable as JSON

- method : navEvent

from[string] : the `from` location in the nav event
to[string] : the `to` location in the nav event
name[string] : the event name
data[object] : event data or null if not specified. the object must be serializable as JSON

- method : timedEvent

name[string] : the event name
start[date] : the event start as a Date object
stop[date] : the event end as a Date object
duration[float] : the event duration
data[object] : event data or null if not specified. the object must be serializable as JSON

- method : featureEvent

name[string] : the event name
data[object] : event data or null if not specified. the object must be serializable as JSON

- method : settingsEvent

name[string] : the event name
data[object] : event data or null if not specified. the object must be serializable as JSON

- method : userEvent

name[string] : the event name
data[object] : event data or null if not specified. the object must be serializable as JSON


- example : Custom Feature Event

This examples shows how to send a featureEvent during an application session to indicate some feature was triggered/used by the user that you would like to track.

~~~
Titanium.Analytics.featureEvent('app.feature.blah',{product:'killer'});
~~~

**/

@:native("Titanium.Analytics")
extern class Analytics
{
	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;

	public static function addEvent(type:String, name:String, data:Dynamic):Void;
	public static function navEvent(from:String, to:String, name:String, data:Dynamic):Void;
	public static function timedEvent(name:String, start:Date, stop:Date, duration:Float, data:Dynamic):Void;
	public static function featureEvent(name:String, data:Dynamic):Void;
	public static function settingsEvent(name:String, data:Dynamic):Void;
	public static function userEvent(name:String, data:Dynamic):Void;
}