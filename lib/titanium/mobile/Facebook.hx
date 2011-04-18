package titanium.mobile;

import titanium.mobile.core.Dispatcher;
import titanium.mobile.facebook.FacebookLoginButton;

/**
Facebook class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Facebook-module

- namespace

Titanium.Facebook

- type

module

- returns

object

- description

The top level Facebook module.  The Facebook module is used for connecting your application with 
Facebook through Facebook Connect.

- since

0.8

- platforms

android, iphone, ipad

- methods

isLoggedIn: return true if the user has logged in
query: execute a FQL query against the FB API
execute: execute a FB API execute request
publishStream: execute a stream request to FB
createLoginButton: create a FB login button instance
requestPermission: request a special permission from the user
hasPermission: checks the existing permission and returns true if the user has granted the requested permission

- method : query

fql[string]: the FQL query to execute
callback[function]: the callback to execute with results once the query is completed. the result object will contain a `success` boolean to indicate the result.  if `success` is false, the `error` property will give the error message.  the `data` property will contain the result if successfully executed.

- method : execute

method[string] : method to execute
params[object] : JSON serializable object or null (if no parameters) to send with the request
callback[function] : the callback function to execute upon receiving a response. the result object will contain a `success` boolean to indicate the result.  if `success` is false, the `error` property will give the error message.  the `data` property will contain the result if successfully executed.
data[object] : the data payload for the request. Must either null, a string or a Blob object.

- method : publishStream

title[string] : the title of the stream post
data[object] : the data to include in the post. Must be JSON serializable or null.
target[string] : the target user id to publish the stream or null if the logged in users account
callback[function] : the callback function to execute upon receiving a response. the result object will contain a `success` boolean to indicate the result.  if `success` is false, the `error` property will give the error message.  the `data` property will contain the result if successfully executed. the `cancel` property will be set to true if the user cancelled the dialog.

- method : createLoginButton, object

params[object]: the parameters for the request. the following keys are valid: `apikey` (the application API key), `secret` (the application API secret or null if using a session proxy), `sessionProxy` (the URL to the application session proxy), `style` (the button style - which is either `normal` or `wide`).

- method : requestPermission

permission[string]: name of the permission
callback[function]: the callback function to execute upon receiving a response. the result object will contain a `success` boolean to indicate the result.  if `success` is false, the `error` property will give the error message.  the `data` property will contain the result if successfully executed. the `cancel` property will be set to true if the user cancelled the dialog.

- method : hasPermission, boolean

permission[string]: the permission to check

- properties

loggedIn[boolean]: return true if the user has logged in
userId[long]: the unique user id returned from Facebook. returns 0 if not logged in
permissions[object] : return a dictionary of permissions with the keys being the name of the permission and the value being a boolean of true if granted, false if not granted
session[object]: return the special properties of the session


- events

login: fired at session login
logout: fired at session logout

- event : login

success: true if the login was successful
error: error message if success was false
cancel: true if the user cancelled the request by closing the dialog

- event : logout

success: true if the logout was successful
error: error message if success was false
cancel: true if the user cancelled the request by closing the dialog

**/

typedef FacebookLoginEvent = 
{ > Event,
	cancel:Bool,
	error:String,
	success:Bool
}

typedef FacebookLogoutEvent = 
{ > Event,
	cancel:Bool,
	error:String,
	success:Bool
}

@:native("Titanium.Facebook")
extern class Facebook
{
	// events
	public static inline var LOGIN_EVENT = "login";
	public static inline var LOGOUT_EVENT = "logout";
	
	// static properties
	public static var loggedIn:Bool;
	public static var permissions:Dynamic;
	public static var session:Dynamic;
	public static var userId:Int;
	
	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;
	
	public static function createLoginButton(params:Dynamic, ?addParams:Dynamic):FacebookLoginButton;
	public static function execute(method:String, params:Dynamic, onResponse:Dynamic->Void, data:Dynamic):Void;
	public static function hasPermission(permission:String):Bool;
	public static function isLoggedIn():Bool;
	public static function publishStream(title:String, data:Dynamic, target:String, onResponse:Dynamic->Void):Void;
	public static function query(fql:String, onResponse:Dynamic->Void):Void;
	public static function requestPermission(permission:String, onResponse:Dynamic->Void):Void;
}