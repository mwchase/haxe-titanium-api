package titanium.mobile.android;


/**
Activity class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Android.Activity-object

- namespace

Titanium.Android.Activity

- type

proxy

- description

The Titanium binding of an [Android Activity](http://developer.android.com/reference/android/app/Activity.html)

- since

1.5

- platforms

android

- methods

getIntent: Returns the [[Titanium.Android.Intent]] that was used to start this Activity.
startActivity: Starts a new Activity, using the passed in Intent as the description. Also see Android's documentation for [startActivity](http://developer.android.com/reference/android/app/Activity.html#startActivity(android.content.Intent))
startActivityForResult: The same as `startActivity`, but also accepts a callback function for handling the result of the started Activity. Also see Android's documentation for [startActivityForResult](http://developer.android.com/reference/android/app/Activity.html#startActivityForResult(android.content.Intent, int))
setResult: Sets the result of this Activity using an Intent. This should be used in the case when the Activity responds to startActivityForResult. Also see Android's documentation for [setResult](http://developer.android.com/reference/android/app/Activity.html#setResult(int))
getString: Get an Android or Application string using the passed-in Resource ID and optional format arguments. Also see Android's documentation for [getString](http://developer.android.com/reference/android/content/Context.html#getString(int)) and [String Resources](http://developer.android.com/guide/topics/resources/string-resource.html#String)
setRequestedOrientation: Set the requested Activity orientation. Also see Android's documentation for [setRequestedOrientation](http://developer.android.com/reference/android/app/Activity.html#setRequestedOrientation(int))
finish: Called when the activity is done and should be closed. Also see Android's documentation for [finish](http://developer.android.com/reference/android/app/Activity.html#finish())

- method : getIntent, `Titanium.Android.Intent`

- method : startActivity
intent[`Titanium.Android.Intent`]: Description of the Activity to start

- method : startActivityForResult
intent[`Titanium.Android.Intent`]: Description of the Activity to start
callback[function]: A callback function that is executed when the Activity has set it's result. See example in `Titanium.Android.Activity`.

- method : setResult
resultCode[int]: The result code for this Activity. Must be one of `Titanium.Android.RESULT_OK`, `Titanium.Android.RESULT_CANCELED`, `Titanium.Android.RESULT_FIRST_USER`
intent[`Titanium.Android.Intent`]: An optional `Titanium.Android.Intent` with extra result data
    
- method : getString, string
resourceId[int]: A Resource ID from the Application or Android.
format[Array<Object>]: Optional format arguments for the String resource

- method : setRequestedOrientation
orientation[int]: Can be one of `Titanium.Android.SCREEN_ORIENTATION_BEHIND`, `Titanium.Android.SCREEN_ORIENTATION_LANDSCAPE`, `Titanium.Android.SCREEN_ORIENTATION_NOSENSOR`, `Titanium.Android.SCREEN_ORIENTATION_PORTRAIT`, `Titanium.Android.SCREEN_ORIENTATION_SENSOR`, `Titanium.Android.SCREEN_ORIENTATION_UNSPECIFIED`, `Titanium.Android.SCREEN_ORIENTATION_USER`

- method : finish

- properties

intent[`Titanium.Android.Intent`]: The Intent that was used to start this Activity
onCreateOptionsMenu[function]: A callback function that is called to initially create an Android [Options Menu](http://developer.android.com/guide/topics/ui/menus.html#options-menu) for this Activity when the user presses the Menu button. See the menu examples in [[Titanium.Android.Menu]]
onPrepareOptionsMenu[function]: A callback function that is called to prepare an [Options Menu](http://developer.android.com/guide/topics/ui/menus.html#options-menu) for displaying on this Activity when the user presses the Menu button. See the menu examples in [[Titanium.Android.Menu]]
requestedOrientation[int]: The requested orientation of this Activity. See possible constant values that begin with SCREEN_ORIENTATION in the [[Titanium.Android]] module.


- events

create : Fired from the Activity's [onCreate](http://developer.android.com/reference/android/app/Activity.html#onCreate(android.os.Bundle))
start : Fired from the Activity's [onStart](http://developer.android.com/reference/android/app/Activity.html#onStart())
pause : Fired from the Activity's [onPause](http://developer.android.com/reference/android/app/Activity.html#onPause())
resume : Fired from the Activity's [onResume](http://developer.android.com/reference/android/app/Activity.html#onResume())
stop : Fired from the Activity's [onStop](http://developer.android.com/reference/android/app/Activity.html#onStop())
destroy : Fired from the Activity's [onDestroy](http://developer.android.com/reference/android/app/Activity.html#onDestroy())
newIntent : Fired when the application is already running and certain flags are set in the Intent. Fired from the Activity's [onNewIntent](http://developer.android.com/reference/android/app/Activity.html#onNewIntent(android.content.Intent)) 

- event : newIntent

intent: the [[Titanium.Android.Intent]] passed to the native `onNewIntent` method.

- example : Callback example
~~~
activity.startActivityForResult(intent, function(e) {
    // The request code used to start this Activity
    var requestCode = e.requestCode;
    // The result code returned from the Activity (http://developer.android.com/reference/android/app/Activity.html#StartingActivities)
    var resultCode = e.resultCode;
    // A Titanium.Android.Intent filled with data returned from the Activity
    var intent = e.intent;
    // The Activity the received the result
    var source = e.source;
});
~~~


**/

#if androidos

typedef Event =
{
	type:String,
	source:Dynamic
}

typedef ActivityCreateEvent = 
{ > Event,
}

typedef ActivityStartEvent = 
{ > Event,
}

typedef ActivityPauseEvent = 
{ > Event,
}

typedef ActivityResumeEvent = 
{ > Event,
}

typedef ActivityStopEvent = 
{ > Event,
}

typedef ActivityDestroyEvent = 
{ > Event,
}

typedef ActivityNewIntentEvent = 
{ > Event,
	intent:Intent
}

@:native("Titanium.Android.Activity")
extern class Activity
{
	// events
	public static inline var ACTIVITY_CREATE_EVENT:String = "create";	
	public static inline var ACTIVITY_START_EVENT:String = "start";
	public static inline var ACTIVITY_PAUSE_EVENT:String = "pause";
	public static inline var ACTIVITY_RESUME_EVENT:String = "resume";
	public static inline var ACTIVITY_STOP_EVENT:String = "stop";
	public static inline var ACTIVITY_DESTROY_EVENT:String = "destroy";
	public static inline var ACTIVITY_NEWINTENT_EVENT:String = "newIntent";
		
	// static properties

	public static var intent:Intent;
	public static var onCreateOptionsMenu:Dynamic->Void; 
	public static var onPrepareOptionsMenu:Dynamic->Void;
	public static var requestedOrientation:Int;

	// static methods
	public static function getIntent():Intent;
	public static function startActivity(intent:Intent):Void;
	public static function startActivityForResult(intent:Intent, callBack:Dynamic->Void):Void;
	public static function setResult(resultCode:Int, intent:Intent):Void;
	public static function getString(resourceId:Int, ?format:Dynamic):String;
	public static function setRequestedOrientation(Orientation:Int):Void;
	public static function finish():Void;
}
#end