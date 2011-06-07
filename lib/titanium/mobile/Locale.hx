package titanium.mobile;

import titanium.mobile.contacts.ContactsGroup;
import titanium.mobile.contacts.ContactsPerson;

/**
Locale class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Locale-module

- namespace

Titanium.Locale

- type

module

- description

The top level Locale module.  The Locale module works with localization files to which are generated during compilation into the operating system specific localization formats. The Locale module provides locale-specific strings which can be referenced at runtime.  Additionally, the module contains a few methods and properties for querying device locale information.

- since

1.5

- platforms

android, iphone, ipad


- properties

currentCountry[string]: return the current (default) ISO 2-letter country code for the device.

currentLanguage[string]: return the current language for the device based on the user's settings (readonly)

currentLocale[string]: return the current locale string for the device based on the user's settings (e.g., en-US).  (readonly) (Android only)


- methods

formatTelephoneNumber: format a telephone number according to the current locale.
getCurrencyCode: return a currency code for a given locale. (Android only)
getCurrencySymbol: return a currency symbol for the given currency code. (Android only)
getLocaleCurrencySymbol: return a currency symbol for the given locale. (Android only)
getString: return a localization string

- method : formatTelephoneNumber, string

number[string]: the phone number to format

- method : getCurrencyCode, string

locale[string]: the locale for which you want to the currency code, e.g. getCurrencyCode('en-US') -> 'USD'

- method : getCurrencySymbol, string

currencyCode[string]: the currency for which you want the symbol, e.g. getCurrencySymbol('USD') -> '$'

- method : getLocaleCurrencySymbol, string

locale[string]: the locale whose currency symbol you want, e.g. getLocaleCurrencySymbol('en-US') -> '$'

- method : getString, string

key[string]: the key to use when mapping into the localization file
hint[string]: the text to use if no key found in the localization file

- notes

The macro `L` can also be used which aliases the method [[Titanium.Locale.getString]].


**/

@:native("Titanium.Locale")
extern class Locale
{
	// properties
	public static var currentCountry:String;
	public static var currentLanguage:String;
	#if androidos
	public static var currentLocale:String;	
	#end
	
	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;

	public static function formatTelephoneNumber(number:String):String;
	#if androidos
	public static function getCurrencyCode(locale:String):String;
	public static function getCurrencySymbol(currencyCode:String):String;
	public static function getLocaleCurrencySymbol(locale:String):String;
	#end
	public static function getString(key:String, hint:String):String;

}