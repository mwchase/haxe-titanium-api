package titanium.mobile;

import titanium.mobile.database.DatabaseDB;

/**
Database class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Database-module

- namespace

Titanium.Database

- type

module

- returns

object

- description

The top level Database module.  The Database module is used for creating and accessing the in-application Database. 

- since

0.1

- platforms

android, iphone, ipad


- methods

open: open a database. if it doesn't yet exist, create it.
install: install a database from the application Resources folder (at build time) and return a reference to the opened database. it is safe to call this method multiple times since this method will only install once if it doesn't already exist on the device.

- method : open, object

name[string]: the name of the database

- method : install, object

path[string]: the path (relative to the main application Resources folder at build time) to the db to install. this file must be in the SQLite 3 file format.
name[string]: the name of the database


- properties

FIELD_TYPE_STRING[int]: constant for requesting a column's value returned in string form.
FIELD_TYPE_INT[int]: constant for requesting a column's value returned in integer form.
FIELD_TYPE_FLOAT[int]: constant for requesting a column's value returned in float form.
FIELD_TYPE_DOUBLE[int]: constant for requesting a column's value returned in double form.

- events


**/


@:native("Titanium.Database")
extern class Database
{
	// static constants
	public static var FIELD_TYPE_STRING:Int;
	public static var FIELD_TYPE_INT:Int;
	public static var FIELD_TYPE_FLOAT:Int;
	public static var FIELD_TYPE_DOUBLE:Int;


	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;
	
	public static function open(name:String):DatabaseDB;
	public static function install(path:String, name:String):DatabaseDB;
}