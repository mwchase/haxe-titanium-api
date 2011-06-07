package titanium.mobile.android;

import titanium.mobile.core.Dispatcher;

/**
Service class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Android.Service-object

- namespace

Titanium.Android.Service

- type

proxy

- description

The Titanium binding of an [Android Service](http://developer.android.com/reference/android/app/Service.html).  Can be used to start/stop the service directly and listen for service-specific events.  In the Javascript-based services you write, this can be referenced with `Titanium.Android.currentService`.  You can create an instance of the service with `Titanium.Android.createService`.

- since

1.5

- platforms

android

- methods

start : Start the Service.  Effective only if this instance of `Titanium.Android.Service` was created with `Titanium.Android.createService`.

stop: Stop this running instance of the Service.

- properties

serviceInstanceId[int] : (read-only) A service can be started more than once -- this number (based on an incrementing integer) indicates which "start number" in the sequence the current service instance is.

intent[`Titanium.Android.Intent`] : (read-only) The `Titanium.Android.Intent` used to start or bind to the Service.

- events

start : Fired when the bound Service instance starts.  Bound service instances are created via `Titanium.Android.createService`.

resume : For Javascript-based Services which you create, `resume` fires each time the Javascript code executes.  For example, if your Service runs on an interval of 10000 (10 seconds), you would expect to see `resume` fired every 10 seconds, just as the Javascript service code you wrote is about to execute.

pause : For Javascript-based Services which you create, `pause` fires after each time the Javascript code executes.  `resume` and `pause` happen in pairs, with `resume` firing just before your Javascript service code executes, and `pause` just after.

stop: Fired when the bound Service instance stops, meaning `Titanium.Android.Service.stop` or `Titanium.Android.stopService` has been called and there are no more bound, un-stopped clients.

- event : resume

iteration : incrementing integer indicating which iteration of an interval-based Service is resuming.  For example, if you have an interval-based Service running every 10 seconds, iteration 3 would occur at about 30 seconds after you start the instance (assuming your service code runs quickly.)

- event : pause

iteration : incrementing integer indicating which iteration of an interval-based Service is pausing.  For example, if you have an interval-based Service running every 10 seconds, iteration 3 would occur at about 30 seconds after you start the instance (assuming your service code runs quickly.)

- example : Hello World Service

Your service code in its own Javascript file.  It reads the `Titanium.Android.Intent` which created it, to see what it should say besides "Hello World".

File: myservice.js:

~~~
var service = Titanium.Android.currentService;
var intent = service.intent;
var message = intent.getStringExtra("message_to_echo");
Titanium.API.info("Hello World!  I am a Service.  I have this to say: " + message);
~~~

Register the service in tiapp.xml:

~~~
<android xmlns:android="http://schemas.android.com/apk/res/android">
	<services>
		<service url="myservice.js" type="interval"/>
	</services>
</android>
~~~

Code in "regular" Titanium file to launch the service and listen for pause/resume events.  Code also stops the service after its code runs 3 times.

~~~
var intent = Titanium.Android.createServiceIntent( { url: 'myservice.js' } );
// Service should run its code every 2 seconds.
intent.putExtra('interval', 2000);
// A message that the service should 'echo'
intent.putExtra('message_to_echo', 'Titanium rocks!');

var service = Titanium.Android.createService(intent);
service.addEventListener('resume', function(e) {
	Titanium.API.info('Service code resumes, iteration ' + e.iteration);
});
service.addEventListener('pause', function(e) {
	Titanium.API.info('Service code pauses, iteration ' + e.iteration);
	if (e.iteration === 3) {
		Titanium.API.info('Service code has run 3 times, will now stop it.');
		service.stop();
	}
});
service.start();
~~~

Console Output:

~~~
[INFO] [29,1942] Service code resumes, iteration 1
[INFO] [70,2029] Hello World! I am a Service. I have this to say: Titanium rocks!
[INFO] [3,2070] Service code pauses, iteration 1
[INFO] [2,3915] Service code resumes, iteration 2
[INFO] [31,3961] Hello World! I am a Service. I have this to say: Titanium rocks!
[INFO] [5,3968] Service code pauses, iteration 2
[INFO] [2,5917] Service code resumes, iteration 3
[INFO] [27,5961] Hello World! I am a Service. I have this to say: Titanium rocks!
[INFO] [16,5980] Service code pauses, iteration 3
[INFO] [1,5981] Service code has run 3 times, will now stop it.
~~~


**/

#if androidos

typedef ServiceStartEvent = 
{ > Event,
}

typedef ServiceResumetEvent = 
{ > Event,
	interaction:Int,
}

typedef ServicePauseEvent = 
{ > Event,
	interaction:Int,
}

typedef ServiceStopEvent = 
{ > Event,
}


@:native("Titanium.Android.Sevice")
extern class Service
{
	// static constructor
	public inline static function create(intent:Intent):Service
		return titanium.mobile.Android.createService(intent)

	// events
	public static inline var SERVICE_START_EVENT:String = "start";
	public static inline var SERVICE_RESUME_EVENT:String = "resume";
	public static inline var SERVICE_PAUSE_EVENT:String = "pause";
	public static inline var SERVICE_STOP_EVENT:String = "stop";
		
	// properties
	public var serviceInstanceId:Int;
	public var intent:Intent;

	// methods
	public function start():Void;
	public function stop():Void;
}
#end