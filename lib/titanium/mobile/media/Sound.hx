package titanium.mobile.media;
import titanium.mobile.core.Dispatcher;

/**
Sound class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Media.Sound-object

- namespace

Titanium.Media.Sound

- type

object

- subtype

proxy

- description

The Sound object is returned by [[Titanium.Media.createSound]] and is useful for playing basic sounds. The Sound object loads the entire media resource in memory before playing.  If you need to support streaming, use the [[Titanium.Media.createAudioPlayer]] API.

- since

0.8

- platforms

android, iphone, ipad

- properties

volume[float]: the volume of the audio. this volume only affects the media, not the device audio.
duration[float]: the duration of the audio.
time[float]: the time position of the audio.
playing[boolean]: boolean to indicate if the audio is playing
paused[boolean]: boolean to indicate if the audio is paused
looping[boolean]: boolean to indicate if the audio should loop upon completion
url[string]: url to the audio
allowBackground[boolean]: boolean to indicate if audio should continue playing even if Activity is paused (Android only as of 1.3.0) 

- methods

play: starting playing the source. if paused, will resume.
stop: stop playing the audio and reset it to the beginning.
pause: temporarily pause the audio. to resume, invoke `play`.
reset: reset the audio to the beginning.
release: release all internal resources. this is typically unnecessary but can be useful if you load a large audio file in `app.js` and play it only once and you would like to release all releases after your final play to reduce memory.
setVolume: set the volume of the audio
getVolume: return the value of the audio
setTime: set the time position of the audio
getTime: return the current time position of the audio
isPaused: returns true if the audio is paused
setPaused: control whether the audio is paused
setLooping: control whether the audio should loop
isLooping: returns true if the audio will loop
isPlaying: returns true if the audio is playing

- method : getVolume, float

- method : getTime, double

- method : isLooping, boolean

- method : isPlaying, boolean

- method : isPaused, boolean


- events

complete: fired when the audio has completed
interrupted: called when the audio is interrupted by the device. this is typically called during an interruption due to an incoming phone call.
resume: called when the audio is resumed after an interruption.
error: called when an error is received playing the audio.

- event : complete

success: boolean to indicate if the sound was successfully played

- event : resume

interruption: boolean to indicate if the resume was from an interruption

- event : error

message: error message


- example : Simple Example

Simple example of playing a WAVE file from the Resources directory.

~~~
var player = Ti.UI.createSound({url:"sound.wav"});
player.play();
~~~

- notes

You can pass the property `preload` in the constructor as an object property to cause the audio to be preloaded before `play` is invoked.  For larger audio files, this is recommended if you want the audio to begin immediately when invoking `play`.

**/

typedef SoundCompleteEvent = 
{ > Event,
	success:Bool
}

typedef SoundErrorEvent = 
{ > Event,
	message:String
}

typedef SoundInterruptedEvent = 
{ > Event,
}

typedef SoundResumeEvent = 
{ > Event,
	interruption:Bool
}

@:native("Titanium.Media.Sound")
extern class Sound extends Dispatcher
{
	// static constructor
	public inline static function create(?params:Dynamic):Sound
		return titanium.mobile.Media.createSound(params)
		
	// events
	public static inline var COMPLETE_EVENT = "complete";
	public static inline var ERROR_EVENT = "error";
	public static inline var INTERRUPTED_EVENT = "interrupted";
	public static inline var RESUME_EVENT = "resume";
	
	// properties
	public var allowBackground:Bool;
	public var audioSessionMode:Int;
	public var duration:Float;
	public var looping:Bool;
	public var paused:Bool;
	public var playing:Bool;
	public var time:Float;
	public var url:String;
	public var volume:Float;
	
	// methods
	public function getTime():Float;
	public function getVolume():Float;
	public function isLooping():Bool;
	public function isPaused():Bool;
	public function isPlaying():Bool;
	public function pause():Void;
	public function play():Void;
	public function release():Void;
	public function reset():Void;
	public function setLooping(looping:Bool):Void;
	public function setPaused(paused:Bool):Void;
	public function setTime(time:Float):Void;
	public function setVolume(volume:Float):Void;
	public function stop():Void;
}