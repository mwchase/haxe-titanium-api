package titanium.mobile.contacts;

/**
Contacts.Person class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Contacts.Person-object.html

- namespace

Titanium.Contacts.Person

- type

object

- description

An object which represents a person in the contacts database.

- since

0.8

- platforms

iphone, ipad

- properties

fullName[string]: The localized full name of the person.  Single value, read-only
birthday[string]: The birthday of the person.  Single value, format is "yyyy-MM-dd'T'HH:mm:ss'.'SSS+0000"
firstName[string]: The first name of the person.  Single value
lastName[string]: The last name of the person.  Single value
middleName[string]: The middle name of the person.  Single value
prefix[string]: The prefix for the person.  Single value
suffix[string]: The suffix for the person.  Single value
nickname[string]: The nickname of the person.  Single value
firstPhonetic[string]: The phonetic first name of the person.  Single value
lastPhonetic[string]: The phonetic last name of the person.  Single value
middlePhonetic[string]: The phonetic middle name of the person.  Single value
organization[string]: The organization the person belongs to.  Single value
jobTitle[string]: The job title of the person.  Single value
department[string]: The department of the person.  Single value
note[string]: Notes for the person.  Single value
image[object]: A blob object representing the image for the person.  Set to `null` to remove the image.  Single value
created[string]: The date the person was created in the database.  Single value, format is "yyyy-MM-dd'T'HH:mm:ss'.'SSS+0000", read-only
modified[string]: The most recent date the person was modified.  Single value, format is "yyyy-MM-dd'T'HH:mm:ss'.'SSS+0000", read-only
kind[int]: The kind of person.  Single value, one of `Titanium.Contacts.CONTACTS_KIND_PERSON` or `Titanium.Contacts.CONTACTS_KIND_ORGANIZATION`
email[object]: The email addresses for the person.  Multi-value, valid labels are: `home`, `work`, `other`.  Values are strings.
phone[object]: The phone numbers for the person.  Multi-value, valid labels are: `home`, `work`, `other`, `mobile`, `pager`, `workFax`, `homeFax`, `main`, `iPhone`.  Values are strings.
instantMessage[object]: The instant messenger names for the person.  Multi-value, valid labels are: `aim`, `icq`, `jabber`, `msn`, `yahoo`.  Values are dictionaries.
relatedNames[object]: The names of people the person is related to.  Multi-value, valid labels are: `mother`, `father`, `parent`, `sister`, `brother`, `child`, `friend`, `spouse`, `partner`, `manager`, `assistant`.  Values are strings.
address[object]: The addresses for the person.  Multi-value, valid labels are: `home`, `work`, `other`.  Values are dictionaries.
date[object]: Dates associated with the person.  Multi-value, valid labels are: `anniversary`.  Values are strings of format "yyyy-MM-dd'T'HH:mm:ss'.'SSS+0000"
URL[object]: URLs of webpages associated with the person.  Multi-value, valid labels are: `home`, `work`, `other`, `homepage`.  Values are strings.


~~~
~~~

- notes

There are two kinds of properties: single value and multivalue.  Single value properties are returned as a direct value, while mutlivalue properties are returned as dictionary objects with keys which represent labels of the property, with values that are arrays of all values in the property which correspond to that label (e.g. {"home" : [address1, address2]})

**/

@:native("Titanium.Contacts.Person")
extern class ContactsPerson
{
	// static constructor
	public inline static function create(?params:Dynamic):ContactsPerson
		return titanium.mobile.Contacts.createPerson(params)
		
	// properties
	public var fullName:String;
	public var birthday:String;
	public var firstName:String;
	public var lastName:String;
	public var middleName:String;
	public var prefix:String;
	public var suffix:String;
	public var nickname:String;
	public var firstPhonetic:String;
	public var lastPhonetic:String;
	public var middlePhonetic:String;
	public var organization:String;
	public var jobTitle:String;
	public var department:String;
	public var note:String;
	public var image:Dynamic;
	public var created:String;
	public var modified:String;
	public var kind:Int;
	public var email:Dynamic;
	public var phone:Dynamic;
	public var instantMessage:Dynamic;
	public var relatedNames:Dynamic;
	public var address:Dynamic;
	public var date:Dynamic;
	public var URL:Dynamic;
}