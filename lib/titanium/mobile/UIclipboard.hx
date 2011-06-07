package titanium.mobile;


/**
Clipboard class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.Clipboard-module

- namespace

Titanium.UI.Clipboard

- type

module

- returns

object

- description

A module used for accessing clipboard data.

- since

1.5

- platforms

iphone, android, ipad

- methods

clearData: Clear data of the given mime-type from the clipboard. If no mime-type is given, clear all data from the clipboard.
clearText: Clear the text portion of the clipboard.
getData: Get the data on the clipboard from the portion which contains data of the given mime-type.
getText: Get the current text on the clipboard.
hasData: Return true if there is any content of the given mime-type on the clipboard.
hasText: Return true if there is any content in the text portion of the clipboard.
setData: Set the data on the clipboard given a mime-type and the new data. This method will set data on the appropriate portion of the clipboard for the given mime-type.
setText: Set the text on the clipboard. This will overwrite the current contents of the clipboard.

- method : clearData

type[string]: (optional) The mime-type of the data to clear.

- method : clearText

- method : getData

type[string]: The mime-type of the data to get.

- method : getText

- method : hasData

type[string]: (optional) The mime-type of the data to check.

- method : hasText

- method : setData

type[string]: The mime-type of the data to set.
data[object]: The new clipboard text.

On Android, only Unicode text with the text/plain type is supported; other MIME types will be ignored.

On iOS, images held in a [Titanium.Blob] may also be copied to the clipboard, using 'image' or an image/* MIME type. URLs may be copied with the appropriate system type by giving 'URL' or 'text/uri-list' as the type. Other MIME types may or may not be correctly converted to system clipboard types.

Currently, setting separate data for multiple types will fail on iOS as each setData() or setText() call will overwrite the previous.

- method : setText

text[string]: The new clipboard text. If the text is an empty string

Currently, setting separate data for multiple types will fail on iOS as each setData() or setText() call will overwrite the previous.

- example : Copying text to the clipboard

~~~
copyButton.addEventListener('click', function() {
    Ti.UI.Clipboard.setText(data.url);
});
~~~

- example : Pasting text from the clipboard

~~~
if (Ti.UI.Clipboard.hasText()) {
    doSomethingWith(Ti.UI.Clipboard.getText());
} else {
    alert('Hey there was no text.');
}
~~~

- example : Clipboard data types

The *Text() functions are equivalent to calling *Data() with 'text' or 'text/plain' types, and work with plain Unicode strings.

On Android, only plain text is supported; other MIME types will be ignored.

On iOS, images will be returned as a `Titanium.Blob`; the special type 'image' or an explicit MIME type may be specified. URLs can be fetched with the special 'URL' or 'text/uri-list' types, and will return strings. Other data types may or may not be correctly mapped to clipboard types by the system, and will be retrieved as binary data in a `Titanium.Blob`.

**/

@:native("Titanium.UI.Clipboard")
extern class UIclipboard
{

	// static methods
	public static function clearData(?type:String):Void;
	public static function clearText():Void;
	public static function getData(type:String):Dynamic;
	public static function getText():Dynamic;
	public static function hasData(?type:String):Bool;
	public static function hasText():Bool;
	public static function setData(type:String, data:Dynamic):Void; 
	public static function setText(text:String):Void;

}