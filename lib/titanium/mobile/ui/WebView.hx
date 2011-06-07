package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Blob;
import titanium.mobile.core.Dispatcher;

/**
WebView class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.WebView-object.html

- namespace

Titanium.UI.WebView

- type

object

- subtype

view


- description

The Web View allows you to open an HTML5 based view which can load either local or remote content. The content can be any valid web content such as HTML, PDF, SVG or other WebKit supported content types. The Web View is created by the method `Titanium.UI.createWebView`.

- since

0.8

- platforms

android, iphone, ipad

- properties

url[string]: the url to the web document. this property will change as the content of the webview changes (such as from internal hyperlinks, etc)
backgroundColor[string]: the background color for the webview
html[string]: the html content of the web document
data[object]: a data blob or file that is used to load the web document
scalesPageToFit[boolean]: whether the webview should scale it's contents or not
loading[boolean]: boolean indicating if the webview is loading content

- methods

evalJS: invoke JavaScript inside the context of the webview and optionally, return a result
reload: reload the current webpage
stopLoading: stop loading a currently loading page
goBack: go back one entry in history to the previous page
goForward: go forward one entry in history to the page before the current page
canGoBack: returns true if the webview can go back in history
canGoForward: returns true if the webview can go forward in history
setBasicAuthentication: set the basic authentication for the webview instance to be used on subsequent url requests
repaint: force the webview to repaint its contents

- method : setBasicAuthentication

username[string]: the username
password[string]: the password

- method : canGoBack, boolean

- method : canGoForward, boolean

- method : evalJS, string

content[string]: JavaScript code as a string. The code will be evaluated inside the webview context.

- events

beforeload: fired before the webview starts loading its content
load: fired when the webview is loaded
error: fired when the webview cannot load the content

- event : beforeload

url: the url of the web document

- event : load

url: the url of the web document

- event : error

url: the url of the web document
message: the error message


- example : Basic Web View to external URL example

Create a web view to a remote URL and open the window as modal.

~~~
	var webview = Titanium.UI.createWebView({url:'http://www.appcelerator.com'});
	var window = Titanium.UI.createWindow();
	window.add(webview);
	window.open({modal:true});
~~~

- notes

Creating webviews are more expensive than creating pure native views because of the requirement to load the HTML browser into memory.

Since a webview internally wants to handle its own events, scrolling and other related touch events against it's own view surface, you cannot have both Titanium style events against the webview instance and internal Javascript events in the DOM.  You must choose between one or the other.

**/


typedef WebViewBeforeLoadEvent = 
{ > Event,
	url:String
}

typedef WebViewLoadEvent = 
{ > Event,
	url:String
}

typedef WebViewErrorEvent = 
{ > Event,
	url:String,
	message:String
}

@:native("Titanium.UI.WebView")
extern class WebView extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):WebView
		return titanium.mobile.UI.createWebView(params)
		
	// events
	public inline static var BEFORE_LOAD_EVENT = "beforeload";
	public inline static var ERROR_EVENT = "error";
	public inline static var LOAD_EVENT = "load";
	
	// properties
	public var data:Dynamic;
	public var html:String;
	public var loading:Bool;
	public var scalesPageToFit:Bool;
	public var url:String;
	
	// methods
	public function canGoBack():Bool;
	public function canGoForward():Bool;
	public function evalJS(content:String):String;
	public function goBack():Void;
	public function goForward():Void;
	public function reload():Void;
	public function repaint():Void;
	public function setBasicAuthentication(username:String, password:String):Void;
	public function stopLoading():Void;
}