package titanium.mobile.android;


/**
PendingIntent class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Android.PendingIntent-object

- namespace

Titanium.Android.PendingIntent

- type

proxy

- description

The Titanium binding of an [Android Pending Intent](http://developer.android.com/reference/android/app/PendingIntent.html)

- since

1.5

- platforms

android

- properties

intent[`Titanium.Android.Intent`]: The intent data to pass to the Activity launched by this PendingIntent
flags[int]: Flags used for creating the Pending Intent. Possible values are `Titanium.Android.FLAG_CANCEL_CURRENT`, `Titanium.Android.FLAG_NO_CREATE`, `Titanium.Android.FLAG_ONE_SHOT`, and `Titanium.Android.FLAG_UPDATE_CURRENT`.

- notes

The type of Intent you choose will effect what kind of PendingIntent is created. Each type corresponds directly with a get method on Android's PendingIntent:

* `Titanium.Android.createIntent` uses [PendingIntent.getActivity](http://developer.android.com/reference/android/app/PendingIntent.html#getActivity(android.content.Context, int, android.content.Intent, int))
* `Titanium.Android.createBroadcastIntent` uses [PendingIntent.getBroadcast](http://developer.android.com/reference/android/app/PendingIntent.html#getBroadcast(android.content.Context, int, android.content.Intent, int))
* `Titanium.Android.createServiceIntent` uses [PendingIntent.getService](http://developer.android.com/reference/android/app/PendingIntent.html#getService(android.content.Context, int, android.content.Intent, int))


**/

#if androidos
@:native("Titanium.Android.PendingIntent")
extern class PendingIntent
{
	// static constructor
	public inline static function create(intent:Intent, flags:Int):PendingIntent
		return titanium.mobile.Android.createPendingIntent(intent, flags)
		
	// properties
	public var intent:Intent;
	public var flags:Int;
}
#end