package titanium.mobile.android.calendar;


/**
Reminder class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Android.Calendar.Reminder-object

- namespace

Titanium.Android.Calendar.Reminder

- type

object

- description

An object which represents a single reminder for an event in an Android calendar.  Reminders should not be created directly, but rather by using the createReminder method of `Titanium.Android.Calendar.Event`.

- since

1.5

- platforms

android

- properties

id[string]: The id of the reminder.
minutes[int]: The minutes before the event when the reminder should occur.
method[int]: The reminder method.  Possible values are the METHOD constants in `Titanium.Android.Calendar`.

- example : Reminder API

See `Titanium.Android.Calendar` for examples of retrieving reminder information and creating reminders for events.

**/

#if androidos
@:native("Titanium.Android.Calendar.Reminder")
extern class Reminder
{		
	// properties
	public var id:String;
	public var minutes:Int;
	public var method:Int;
}
#end