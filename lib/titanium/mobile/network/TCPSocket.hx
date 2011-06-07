package titanium.mobile.network;
import titanium.mobile.core.Dispatcher;

/**
TCPSocket class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Network.TCPSocket-object

- namespace

Titanium.Network.TCPSocket

- type

object


- description

DEPRECATED: USE `Titanium.Network.Socket.TCP` WHERE POSSIBLE.  The TCPSocket instance returned from `Titanium.Network.createTCPSocket`.  This object represents a socket which either listens locally on the device for connections, or connects to a remote machine.

- since

1.2.0

- platforms

iphone, ipad

- properties

hostName[string]: the host name to connect to.  Must be `Titanium.Network.INADDR_ANY` or an identifier for the local device in order to listen
port[int]: the port to connect/listen on
mode[int]: the socket's mode
isValid[boolean]: whether or not the socket is valid
stripTerminator[boolean]: strip terminating null character when sending string data; default is false

- methods

listen: set up the socket to receive connections
connect: connect the scocket to a TCP server
close: close the socket
write: write data to the socket, if the mode is WRITE_MODE or READ_WRITE_MODE

- method : write

data[object,string]: either a string or blob object representing the data to be transferred
sendTo[int]: the socket reference to send the data to.  Default is to send to all connected sockets

- events

readError: an error occured when reading
writeError: an error occured when writing
read: new data was read off the socket

- event : readError

error[string]: a description of the error
code[int]: the BSD socket error code

- event : writeError

error[string] : a description of the error
code[int] : the BSD socket error code

- event : read

data[object]: a blob representing the data read, can be interpreted via toString
from[int]: the reference for the socket that data was retrieved from

~~~
~~~

- notes

Sockets are nontrivial; it is recommended that anyone using them be familiar with the basics of BSD sockets.  All sockets use TCP connections, and are asynchronous for read operations, so your program should be ready to receive 'read' events at any point.  Socket references cannot be transferred to socket objects, and vice-versa - socket references are an internal mechanism which is used only to determine which sockets to send data to and read data from.  For listening sockets, it is highly recommended that you use the `Titanium.Network.INADDR_ANY` constant as the host name.  If a window containing a socket is closed, the socket MUST be closed also unless you intend to continue to receive data, otherwise the socket will consume resources (and potentially cause conflicts with opening the window again, if a listener) until the program is restarted.  Be aware of the differences between the listen() and connect() functions; attempting to use one when you mean the other may result in errors, unpredictable behavior, or both.



**/


typedef NetworkReadEvent = 
{ > Event,
	data:Dynamic,
	from:Int
}

typedef NetworkReadErrorEvent = 
{ > Event,
	code:Int,
	error:String
}

typedef NetworkWriteErrorEvent = 
{ > Event,
	code:Int,
	error:String
}

@:native("Titanium.Network.TCPSocket")
extern class TCPSocket extends Dispatcher
{
	// static constructor
	public inline static function create(hostName:String, port:Int, mode:Int, ?params:Dynamic):TCPSocket
		return titanium.mobile.Network.createTCPSocket(hostName, port, mode, params)
		
	// events
	public static inline var READ_EVENT = "read";
	public static inline var READ_ERROR_EVENT = "readError";
	public static inline var WRITE_ERROR_EVENT = "writeError";
	
	// properties
	public var hostName:String;
	public var isValid:Bool;
	public var mode:Int;
	public var port:Int;
	public var stripTerminator:Bool;
	
	// methods
	public function connect():Void;
	public function close():Void;
	public function listen():Void;
	public function write(data:Dynamic, sendTo:Int):Void;
}