package titanium.mobile.media;
import titanium.mobile.core.Blob;

/**
Item class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Media.Item-object

- namespace

Titanium.Media.Item

- type

object

- description

A representation of a media item returned by the music picker as part of the `items` array in the dictionary passed to its `success` function.

- since

1.4.0

- platforms

iphone, ipad

- properties

mediaType[int]: the type of the item
title[string]: the title of the item
albumTitle[string]: the album title of the item
artist[string]: the artist of the item
albumArtist[string]: the artist for the album of the item
genre[string]: the genre of the item
composer[string]: the composer of the item
playbackDuration[double]: the length (in seconds) of the item
albumTrackNumber[int]: the track number of the item
albumTrackCount[int]: the number of tracks for the album of the item
discNumber[int]: the disc number of the item
discCount[int]: the total number of discs of the item
lyrics[string]: the lyrics of the item
isCompilation[boolean]: true if the item is part of a compilation album
podcastTitle[string]: the title of a podcast item.  Only for media types of `Titanium.Media.MUSIC_MEDIA_TYPE_PODCAST`.
playCount[int]: the number of times the item has been played
skipCount[int]: the number of times the item has been skipped
rating[int]: the rating of the item
artwork[object]: a blob object containing the image for the item's artwork, or null if none


**/

#if iphoneos
@:native("Titanium.Media.Item")
extern class MediaItem
{
	// static constructor
	public inline static function create(?params:Dynamic):MediaItem
		return titanium.mobile.Media.createItem(params)
		
	// properties
	public var albumArtist:String;
	public var albumTitle:String;
	public var albumTrackCount:Int;
	public var albumTrackNumber:Int;
	public var artist:String;
	public var artwork:Blob;
	public var composer:String;
	public var discCount:Int;
	public var discNumber:Int;
	public var genre:String;
	public var isCompilation:Bool;
	public var lyrics:String;
	public var mediaType:Int;
	public var playCount:Int;
	public var playbackDuration:Float;
	public var podcastTitle:String;
	public var rating:Int;
	public var skipCount:Int;
	public var title:String;
}
#end