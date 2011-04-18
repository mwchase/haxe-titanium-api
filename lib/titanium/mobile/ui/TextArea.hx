package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;

/**
TextArea class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.TextArea-object.html

- namespace

Titanium.UI.TextArea

- type

object

- subtype

view

- description

A Text Area is created by the method `Titanium.UI.createTextArea`. The Text Area is a multiline field.

- since

0.8

- platforms

android, iphone, ipad

- properties

enabled[boolean]: boolean indicating the enabled state of the field
editable[boolean]: boolean indicating if the field is editable
backgroundColor[string]: value of the background color of the field
value[string]: value of the field
keyboardToolbar[array]: array of toolbar button objects to be used when the keyboard is displayed
keyboardToolbarColor[string]: the color of the keyboard toolbar 
keyboardToolbarHeight[float]: the height of the keyboard toolbar
suppressReturn[boolean]: boolean to indicate if the return key should be suppressed during entry

- methods

focus: force the field to gain focus
blur: force the field to lose focus
hasText: return boolean (true) if the field has text

- events

focus: fired when the field gains focus
blur: fired when the field loses focus
return: fired when the field return key is pressed on the keyboard
change: fired when the field value changes
selected: fired when the text in the field is selected

- event : selected

range: the range of text. range is an object with the properties `location` and `length`.

- event : change

value: the value of the field upon change

- event : blur

value: the value of the field upon blur

- event : focus

value: the value of the field upon focus

- event : return

value: the value of the field upon return

- example : Basic Text Area with Customizations

This example created a highly customized text area.

~~~
var ta1 = Titanium.UI.createTextArea({
	value:'I am a textarea',
	height:70,
	width:300,
	top:60,
	font:{fontSize:20,fontFamily:'Marker Felt', fontWeight:'bold'},
	color:'#888',
	textAlign:'left',
	appearance:Titanium.UI.KEYBOARD_APPEARANCE_ALERT,	
	keyboardType:Titanium.UI.KEYBOARD_NUMBERS_PUNCTUATION,
	returnKeyType:Titanium.UI.RETURNKEY_EMERGENCY_CALL,
	borderWidth:2,
	borderColor:'#bbb',
	borderRadius:5
});
~~~

- notes

Both Text Areas and Text Fields can control the buttons displayed in a button bar above the keyboard when it's visible.

Example using a custom keyboard toolbar:

~~~
var textfield = Titanium.UI.createTextField({
	color:'#336699',
	value:'Focus to see keyboard w/ toolbar',
	height:35,
	width:300,
	top:10,
	borderStyle:Titanium.UI.INPUT_BORDERSTYLE_ROUNDED,
	keyboardToolbar:[flexSpace,camera, flexSpace,tf,flexSpace, send,flexSpace],
	keyboardToolbarColor: '#999',	
	keyboardToolbarHeight: 40,
});
~~~

**/

typedef TextAreaBlurEvent = 
{ > Event,
	value:String
}

typedef TextAreaChangeEvent = 
{ > Event,
	value:String
}

typedef TextAreaFocusEvent = 
{ > Event,
	value:String
}

typedef TextAreaReturnEvent = 
{ > Event,
	value:String
}

typedef TextAreaSelectedEvent = 
{ > Event,
	value:String
}

@:native("Titanium.UI.TextArea")
extern class TextArea extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):TextArea
		return titanium.mobile.UI.createTextArea(params)
		
	// events
	public static inline var BLUR_EVENT = "blur";
	public static inline var CHANGE_EVENT = "change";
	public static inline var FOCUS_EVENT = "focus";
	public static inline var RETURN_EVENT = "return";
	public static inline var SELECTED_EVENT = "selected";
	
	// properties
	public var editable:Bool;
	public var enabled:Bool;
	public var keyboardToolbar:Array<Dynamic>;
	public var keyboardToolbarColor:String;
	public var keyboardToolbarHeight:Float;
	public var suppressReturn:Bool;
	public var value:String;
	
	// methods
	public function blur():Void;
	public function focus():Void;
	public function hasText():Bool;
}