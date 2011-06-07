package titanium.mobile.filesystem;

import titanium.mobile.core.Buffer;
import titanium.mobile.IOStream;

/**
FileStream class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/1.7.0.RC1/Titanium.Filesystem.FileStream-object

- namespace

Titanium.Filesystem.FileStream

- type

proxy

- description

Wrapper around `Titanium.Filesystem.File` that implements the `Titanium.IOStream` interface.

- since

1.7

- platforms

iphone, android, ipad

- methods

read: reads data from stream into a buffer.  Optional offset and length arguments to specify position in buffer in whichto start writing the read data, and the amount of data to read.
write: writes data from buffer to stream. Optional offset and length arguments to specify position in buffer in which to start reading data that is written to the stream, and the length of the data to take from the buffer.
isWriteable: reads true if stream is writeable, false otherwise
isReadable: reads true if stream is readable, false otherwise
close: closes stream and throws exception on error

- method : read, Number
buffer[`Titanium.Buffer`]: buffer to read stream data into
offset[Number]: (Optional) offset to start reading buffer data from
length[Number]: (Optional) length of data to read from buffer

- method : write, Number
buffer[`Titanium.Buffer`]: buffer to write to stream
offset[Number]: (Optional) offset to start writing buffer data from
length[Number]: (Optional) length of data to write from buffer

- method : isWriteable, Boolean

- method : isReadable, Boolean

- method : close

- example : Write data to stream
~~~
var outBuffer = Ti.createBuffer({data: "write me"});
var outStream = // stream object could be socket, file, buffer or blob

var bytesWritten = outStream.write(outBuffer);  // writes entire buffer to stream
Ti.API.info("Bytes written:" + bytesWritten);  // should be 8

bytesWritten = outStream.write(outBuffer, 2, 5);  // only writes "ite m" to stream
Ti.API.info("Bytes written:" + bytesWritten);  // should be 5
~~~

- example : Read data from stream
~~~
var inBuffer = Ti.createBuffer({length: 1024});

// assume the inStream contains the string "hello world"
var inStream = // stream object could be socket, file, buffer or blob

var bytesRead = inStream.read(inBuffer);  // reads "hello world" from stream
Ti.API.info("Bytes read:" + bytesRead);  // should be 11

bytesRead = inStream.read(inBuffer, 2, 5);  // only reads "llo w" from stream
Ti.API.info("Bytes read:" + bytesRead);  // should be 5
~~~

**/

@:native("Titanium.Filesystem.FileStream")
extern class FileStream /*extends File,*/ implements IOStream
{
	// Class File Methods
	public function nativePath():String;
	public function exists():Bool;
	public function readonly():Bool;
	public function symbolicLink():Bool;
	public function writeable():Bool;
	public function executable():Bool;
	public function hidden():Bool;
	public function setReadonly():Void;
	public function setExecutable():Void;
	public function setHidden():Void;
	public function createTimestamp():Int;
	public function modificationTimestamp():Int;
	public function getDirectoryListing():Array<String>;
	public function spaceAvailable():Bool;
	public function createDirectory():Bool;
	public function createFile():Bool;
	public function deleteDirectory(recursive:Bool):Bool;
	public function deleteFile():Bool;
	public function move(newPath:Dynamic):Bool;
	public function rename(newName:String):Bool;
//	public function read():Blob;
//	public function write(contents:Dynamic, ?append:Bool):Bool;
	public function extension():String;
	public function getParent():File;
	public function name():String;	
	
	// IOStream implemented methods
	public function read( buffer:Buffer, ?offset:Int, ?length:Int ):Int;
	public function write( buffer:Buffer, ?offset:Int, ?length:Int ):Int;
	public function isWriteable():Bool;
	public function isReadable():Bool;
	public function close():Void;
}