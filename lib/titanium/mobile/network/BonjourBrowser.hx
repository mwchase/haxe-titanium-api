package titanium.mobile.network;
import titanium.mobile.core.Dispatcher;

/**
BonjourBrowser class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Network-module

- namespace

Titanium.Network.BonjourBrowser

- type

object

- description

The BonjourBrowser instance returned from `Titanium.Network.createBonjourBrowser`.  This object is a browser for the discovery and retrieval of Bonjour services available on the network.  

- since

1.2.0

- platforms

iphone, ipad

- properties

serviceType[string]: The type of the service the browser searches for
domain[string]: The domain the browser is searching in
isSearching[boolean]: Whether or not the browser is currently searching

- methods

search: Conduct a search for Bonjour services matching the type and domain specified during creation
stopSearch: Halt an ongoing search

- events

updatedServices: Fired when the discovered services list is updated

-event : updatedServices

services: An array of BonjourService objects corresponding to currently available services.  If you cache this value, including using it as table data, be aware that it could become out of date at any time due to the asynchronous nature of Bonjour service discovery.

~~~
~~~

- notes

If your application publishes Bonjour services itself, that service will be discovered by the browser if necessary; be prepared to perform a check if you do not want to list local services as available.  Bonjour service browsing is an asynchronous operation, meaning that you should be extremely careful when caching values from the 'services' property returned by the updatedServices event.  In particular, if you maintain a local copy of available services and a user tries to connect to one, you should be prepared to handle failures gracefully; the next updatedServices event should provide the new services list, but you should not rely on it being delivered before user input.  When a window which uses Bonjour browsing is closed, if you do not want to continue searching, you must call the stop() method.

**/

#if iphoneos

typedef NetworkBonjourBrowserUpdateEvent = 
{ > Event,
	services:Array<BonjourService>
}


@:native("Titanium.Network.BonjourBrowser")
extern class BonjourBrowser extends Dispatcher
{
	// static constructor
	public inline static function create(serviceType:String, domain:String, ?params:Dynamic):BonjourBrowser
		return titanium.mobile.Network.createBonjourBrowser(serviceType, domain, params)
		
	// events
	public static inline var UPDATE_SERVICES_EVENT = "updatedServices";
	
	// properties
	public var serviceType:String;
	public var domain:String;
	public var isSearching:Bool;
	
	// methods
	public function search():Void;
	public function stopSearch():Void;
}
#end