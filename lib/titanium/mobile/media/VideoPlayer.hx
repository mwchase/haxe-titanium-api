package titanium.mobile.media;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Blob;
import titanium.mobile.core.Dispatcher;
import titanium.mobile.core.Size;

/**
VideoPlayer class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Media.VideoPlayer-object

- namespace

Titanium.Media.VideoPlayer

- type

object

- subtype

view

- description

The VideoPlayer object is returned by [[Titanium.Media.createVideoPlayer]] and is useful for playing videos. 

- since

0.9

- platforms

android, iphone, ipad

- properties

initialPlaybackTime[double]: The start time of movie playback. Defaults to NaN, indicating the natural start time of the movie.

playing[boolean]: Boolean to indicate if the player has started playing.

scalingMode[int]: Determines how the content scales to fit the view. Defaults to [[Titanium.Media.VIDEO_SCALING_ASPECT_FIT]].

movieControlMode[int]: deprecated in 3.2+ of the iPhone SDK - use `mediaControlStyle`. Provides the ability to set the control mode of the movie player. Defaults to [[Titanium.Media.VIDEO_CONTROL_DEFAULT]].

mediaControlStyle[int]: The style of the playback controls. Defaults to [[Titanium.Media.VIDEO_CONTROL_DEFAULT]]

url[string]: url of the media.

autoplay[boolean]: indicates if a movie should automatically start playback when it is likely to finish uninterrupted based on e.g. network conditions. Defaults to true.

useApplicationAudioSession[boolean]: Indicates if the movie player should inherit the application's audio session instead of creating a new session (which would interrupt the application's session). Defaults to true. Setting this property during playback will not take effect until playback is stopped and started again.

playableDuration[double]: The currently playable duration of the movie, for progressively downloaded network content. 

duration[double]: The duration of the movie, or 0.0 if not known.

endPlaybackTime[double]: The end time of movie playback. Defaults to NaN, which indicates natural end time of the movie.

fullscreen[boolean]: Determines if the movie is presented in the entire screen (obscuring all other application content). Default is false. Setting this property to true before the movie player's view is visible will have no effect.

loadState[int]: Returns the network load state of the movie player.

mediaTypes[int]: The types of media in the movie, or [[Titanium.Media.VIDEO_MEDIA_TYPE_NONE]] if not known.

sourceType[int]: The playback type of the movie. Defaults to [[Titanium.Media.VIDEO_SOURCE_TYPE_UNKNOWN]]. Specifying a playback type before playing the movie can result in faster load times.

playbackState[int]: Returns the current playback state of the music player

repeatMode[int]: Determines how the movie player repeats when reaching the end of playback. Defaults to [[Titanium.Media.VIDEO_REPEAT_MODE_NONE]].

naturalSize[object]: returns a dictionary with properties `width` and `height`. Returns the natural size of the movie or 0 for both properties if not known or applicable.

backgroundColor[string]: background color for the view. deprecated, set the background color on the view.

media[object]: the media object, either a File or Blob.

contentURL[string]: deprecated. use url property instead.

- methods

setBackgroundView: A view for customization which is always displayed behind movie content.

setMedia: the a non-url based media to play, either a File or Blob.

setUrl: the url to play

requestThumbnailImagesAtTimes: Asynchronously request thumbnails for one or more times, provided as an array of numbers (double). Fires a `thumbnail` event on completion. Optionally invokes the callback function passed in the method.

cancelAllThumbnailImageRequests: Cancels all pending asynchronous thumbnail requests.

thumbnailImageAtTime: Returns a thumbnail at the given time as a blob.

play: start playing the video

pause: pause playing the video. On iOS only available under 3.2 and later

stop: stop playing the video

release: release the internal video resources immediately.  this is not usually necessary but can help if you no longer need to use the player after it is used to help converse memory.


- method : setBackgroundView

view[object]: view to set

- method : setMedia

media[object]: media to play

- method : setUrl

url[string]: the url to play

- method : requestThumbnailImagesAtTimes

times[array]: array of doubles for each time to request
option[int]: either [[Titanium.Media.VIDEO_TIME_OPTION_NEAREST_KEYFRAME]] or [[Titanium.Media.VIDEO_TIME_OPTION_EXACT]].

- method : thumbnailImageAtTime, object

time[double]: playback time 
option[int]: either [[Titanium.Media.VIDEO_TIME_OPTION_NEAREST_KEYFRAME]] or [[Titanium.Media.VIDEO_TIME_OPTION_EXACT]]


- events 

complete: fired when movie playback ends or a user exits playback
error: fired when movie playback encounters an error
preload: fired when the movie has preloaded and is ready to play
resize: fired when the movie player is resized
load: fired when the movie play loads
thumbnail: fired when a movie thumbnail is available from `requestThumbnailImagesAtTimes`
fullscreen: fired when a movie changes from fullscreen view
sourceChange: fired when the movieSourceType is [[Titanium.Media.VIDEO_SOURCE_TYPE_UNKNOWN]] when preparing for playback.
durationAvailable: fired when the duration is available
mediaTypesAvailable: fired when the media types is available
naturalSizeAvailable: fired when the natural size is available
loadstate: fired when the network loadState changes
playing: fired when the currently playing movie changes
playbackState: fired when the playbackState changes

- event : complete

reason: the completion reason. One of [[Titanium.Media.VIDEO_FINISH_REASON_PLAYBACK_ENDED]], [[Titanium.Media.VIDEO_FINISH_REASON_PLAYBACK_ERROR]] or [[Titanium.Media.VIDEO_FINISH_REASON_USER_EXITED]].

- event : error

message: reason for error as string

- event : preload

- event : resize

- event : load

- event : thumbnail

time: time
image: blob of the thumbnail image
success: boolean to indicate success or failure
error: if success is `false`, error message as string for reason


- event : fullscreen

entering: true to indicate entering fullscreen, false to indicate leaving fullscreen
 
- event : sourceChange

sourceChange: the new sourceType

- event : durationAvailable

duration: duration

- event : mediaTypesAvailable

mediaTypes: media types

- event : naturalSizeAvailable

naturalSize: natural size as a dictionary. see `naturalSize` property.

- event : loadstate

loadState: loadState 

- event : playing

url: url of the media

- event : playbackState

playbackState: playbackState


- notes

Starting in iPhone 3.2 SDK, the video player can be embedded in any normal view.  However, if you create multiple video players at one time, only the last one to have its URL set will display video content or behave as if it is a view for a video player.  Prior to 3.2, only fullscreen views were available on iPhone.


**/


typedef VideoPlayerCompleteEvent = 
{ > Event,
	reason:Int
}

typedef VideoPlayerLoadEvent = 
{ > Event,
}

typedef VideoPlayerErrorEvent = 
{ > Event,
	message:String
}

typedef VideoPlayerDurationAvailableEvent = 
{ > Event,
	duration:Float
}

typedef VideoPlayerFullscreenEvent = 
{ > Event,
	entering:Bool
}

typedef VideoPlayerLoadStateEvent = 
{ > Event,
	loadState:Int
}

typedef VideoPlayerMediaTypesAvailableEvent = 
{ > Event,
	mediaTypes:Int
}

typedef VideoPlayerNaturalSizeAvailableEvent = 
{ > Event,
	naturalSize:Size
}

typedef VideoPlayerPlaybackStateEvent = 
{ > Event,
	playbackState:Int
}

typedef VideoPlayerPlayingEvent = 
{ > Event,
	url:String
}

typedef VideoPlayerPreloadEvent = 
{ > Event,
}

typedef VideoPlayerSourceChangeEvent = 
{ > Event,
	sourceChange:Int
}

typedef VideoPlayerThumbnailEvent = 
{ > Event,
	time:Dynamic,
	image:Blob,
	success:Bool,
	error:String
}

@:native("Titanium.Media.VideoPlayer")
extern class VideoPlayer extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):VideoPlayer
		return titanium.mobile.Media.createVideoPlayer(params)
		
	// events
	public static inline var CLICK_EVENT = "click";
	public static inline var COMPLETE_EVENT = "complete";
	public static inline var DURATION_AVAILABLE_EVENT = "durationAvailable";
	public static inline var ERROR_EVENT = "error";
	public static inline var FULLSCREEN_EVENT = "fullscreen";
	public static inline var LOAD_EVENT = "load";
	public static inline var LOADSTATE_EVENT = "loadstate";
	public static inline var MEDIA_TYPES_AVAILABLE_EVENT = "mediaTypesAvailable";
	public static inline var NATURAL_SIZE_AVAILABLE_EVENT = "naturalSizeAvailable";
	public static inline var PLAYBACK_STATE_EVENT = "playbackState";
	public static inline var PLAYING_EVENT = "playing";
	public static inline var PRELOAD_EVENT = "preload";
	public static inline var RESIZE_EVENT = "resize";
	public static inline var SOURCE_CHANGE_EVENT = "sourceChange";
	public static inline var THUMBNAIL_EVENT = "thumbnail";

	// properties
	public var autoPlay:Bool;
	public var duration:String;
	public var contentURL:String;
	public var url:String;
	public var endPlaybackTime:Float;
	public var fullscreen:Bool;
	public var initialPlaybackTime:Float;
	public var loadState:Int;
	public var media:Dynamic;
	public var mediaControlStyle:Int;
	public var mediaTypes:Int;
	public var naturalSize:Size;
	public var playableDuration:Float;
	public var playbackState:Int;
	public var playing:Bool;
	public var repeatMode:Int;
	public var scalingMode:Int;
	public var sourceType:Int;
	public var useApplicationAudioSession:Bool;
	#if iphoneos
	public var allowsAirPlay:Bool;
	public var movieControlMode:Int;
	#end
	
	// methods
	public function play():Void;
	public function pause():Void;
	public function cancelAllThumbnailImageRequests():Void;
	public function release():Void;
	public function setBackgroundView(view:Dynamic):Void;
	public function setMedia(media:Dynamic):Void;
	public function requestThumbnailImagesAtTimes(times:Array<Float>, option:Int):Void;
	public function setUrl(url:String):Void;
	public function stop():Void;
	public function thumbnailImageAtTime(time:Float, option:Int):Blob;


}