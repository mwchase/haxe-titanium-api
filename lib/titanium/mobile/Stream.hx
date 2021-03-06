package titanium.mobile;

import titanium.mobile.core.Dispatcher;
import titanium.mobile.IOStream;
import titanium.mobile.core.Buffer;

/**
Stream class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/1.7.0.RC1/Titanium.Stream-module

- namespace

Titanium.Stream

- type

module

- description

Stream module containing stream utility methods

- since

1.7

- platforms

iphone, android, ipad

- properties

MODE_READ[Number]: read only mode value
MODE_WRITE[Number]: write mode value
MODE_APPEND[Number]: append mode value.

- methods

createStream: Creates stream from specified container.  Returns `Titanium.BufferStream` or `Titanium.BlobStream` depending on whether a Buffer or Blob is provided as the 'source' property in params.  Write and append mode only applies to Buffer as Blob is read only.
read: Async version of read on `Titanium.IOStream`
readAll: reads all data from `Titanium.IOStream`.  If you pass a buffer and callback, the read will be asynchronous and `readAll` won't return anything.  If you don't pass a buffer and callback, the read will be synchronous and a `Titanium.Buffer` with the read data will be returned.
write: Async version of write on `Titanium.IOStream`
write: Async version of write on `Titanium.IOStream` that takes offset and length
writeStream: Writes all data from input stream to output stream.  Pass a callback function as the final argument if you wish for the write operation to be asynchronous.  The synchronous version will return a number indicating the number of bytes written.
pump: Pumps data from input stream to handler method

- method : createStream, `Titanium.IOStream`
params[Object]: creation arguments, which are: `source`, a `Titanium.Buffer` or `Titanium.Blob` on which to base the stream.  `mode`,  mode for the stream to be opened in, which can be `Titanium.Stream.MODE_READ`,  `Titanium.Stream.MODE_WRITE` or `Titanium.Stream.MODE_APPEND`.

- method : read
sourceStream[`Titanium.IOStream`]: Stream to read from
buffer[`Titanium.Buffer`]: Buffer to read into
offset[Number]: (optional) offset to start reading buffer data from.  Default = 0.
length[Number]: (optional) length of data to read from buffer.  Default is buffer length.
resultsCallback[Function]: called with result of the read operation.  Callback parameter has these members: `source`, the stream being read.  `bytesProcessed`, the number of bytes read.  `errorState`, an error state if any.  `errorDescription`, an error description if any.

- method : readAll
sourceStream[`Titanium.IOStream`]: Stream to read from
buffer[`Titanium.Buffer`]: Buffer to read into.  OPTIONAL: use only if you want an asynchronous read.
resultsCallback[Function]: called with result of the read operation.  OPTIONAL: use only if you want an asynchronous read.  Callback parameter has these members: `source`, the stream being read.  `bytesProcessed`, the number of bytes read.  `errorState`, an error state if any.  `errorDescription`, an error description if any.

- method : write
outputStream[`Titanium.IOStream`]: Stream to write to
buffer[`Titanium.Buffer`]: Buffer to write from
offset[Number]: offset to start writing buffer data from. (Optional, default is 0).
length[Number]: length of data to write from buffer.  (Optional, default is buffer.length).
resultsCallback[Function]: called with result of the write operation. Callback parameter has these members: `source`, the stream being written to.  `bytesProcessed`, the number of bytes written.  `errorState`, an error state if any.  `errorDescription`, an error description if any.
 

- method : writeStream
inputStream[`Titanium.IOStream`]: Stream to read from
outputStream[`Titanium.IOStream`]: Stream to write to
maxChunkSize[Number]: max size of data to write from inputStream to ouputStream at once
resultsCallback[Function]: called with result of the writeStream operation.  (OPTIONAL: use only if you want the write operation to be asynchronous).  The callback parameter has these members: `fromStream`, the stream being read from.  `toStream`, the stream being written to.  `bytesProcessed`, the number of bytes read and written.  `errorState`, an error state if any.  `errorDescription`, an error description if any.

- method : pump
inputStream[`Titanium.IOStream`]: Stream to pump from
handler[Function]: handler method that will receive the pumped data.  The function takes a single parameter, which in turn contains the following members: `source`, the stream being read from.  `buffer`, the `Titanium.Buffer` holding the data currently being pumped to the handler method (i.e., the current chunk).  `bytesProcessed`, the number of bytes in the current pump segment.  `totalBytesProcessed`, total number of bytes processed in the overall pump operation so far.  `errorState`, an error state if any.  `errorDescription`, an error description if any.
maxChunkSize[Number]: max size of data to pump from inputStream to the handler method at once
isAsync[Boolean]: true is pump operation should be async, false is not.  (Optional, default is false).



**/

@:native("Titanium.Stream")
extern class Stream extends Dispatcher
{
	// properties
	public static var MODE_READ:Int;
	public static var MODE_WRITE:Int;
	public static var MODE_APPEND:Int;
	
	// static methods
	public static function createStream(params:Dynamic):IOStream;
	public static function read(sourceStream:IOStream, buffer:Buffer, ?offset:Int, ?length:Int, resultsCallback:Dynamic):Void;
	public static function readAll(sourceStream:IOStream, buffer:Buffer, resultsCallback:Dynamic):Void;
	public static function write(outputStream:IOStream, buffer:Buffer, offset:Int, length:Int, resultsCallback:Dynamic):Void;
	public static function writeStream(inputStream:IOStream, outputStream:IOStream, maxChunkSize:Int, ?isAsync:Bool):Void; 
	public static function pump(inputStream:IOStream, handler:Dynamic, maxChunkSize:Int, ?isAsync:Bool):Void;
}