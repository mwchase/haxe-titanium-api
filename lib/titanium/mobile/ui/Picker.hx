package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;
import titanium.mobile.core.Point;

/**
Picker class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.Picker-object.html

- namespace

Titanium.UI.Picker

- type

object

- subtype

proxy

- description

A Picker is created by the method [Titanium.UI.createPicker](Titanium.UI.createPicker).  A Picker can be used to select one or more fixed values.

- since

0.8

- platforms

android, iphone, ipad

- properties

columns[array]: array of column values
type[int]: the type constant for the picker. One of `Titanium.UI.PICKER_TYPE_PLAIN` (default), `Titanium.UI.PICKER_TYPE_DATE_AND_TIME`, `Titanium.UI.PICKER_TYPE_DATE`, `Titanium.UI.PICKER_TYPE_TIME` or `Titanium.UI.PICKER_TYPE_COUNT_DOWN_TIMER`.
selectionIndicator[boolean]: for basic picker, boolean value to indicate whether the visual selection style is shown. On the iPhone, this is a blue selected bar.
minDate[date]: the minimum Date/Time for value for date pickers
maxDate[date]:the maximum Date/Time for value for date pickers
value[date]: the Date/Time value for date pickers
countDownDuration[double]: the duration value in milliseconds for count down timer pickers
locale[string]: the locale used for displaying Date/Time pickers values
minuteInterval[int]: property to set the interval displayed by the minutes wheel (for example, 15 minutes). The interval value must be evenly divided into 60; if it is not, the default value is used. The default and minimum values are 1; the maximum value is 30.


- methods

add: add an array of rows, a single row or a column to the picker
reloadColumn: causes the picker to reload the values from the new column
getSelectedRow: get the selected row object for column
setSelectedRow: set the column's row to the selected state

- method : getSelectedRow, object

index[int]: for the column index, return the row object or nil if not found

- method : setSelectedRow

column[int]: the column index
row[int]: the row index
animated[boolean]: boolean to indicate if the selection should be animated (default)

- method : add

data[array,object]: add an array of rows, a single row or a column to the picker

- method : reloadColumn

column[object]: new column to load

- events

change: fired when the value of a picker row and/or column changes

- event : change

selectedValue: (plain picker only) the array of selected values, one element per column in the picker.
value: (date/time pickers only) the selected date/time value.
rowIndex: the selected row index
columnIndex: the selected column index
column: the column object
row: the row object

- example : Basic Single Column Picker

In this basic picker example, we create a one column picker with 4 rows. 

~~~
var picker = Titanium.UI.createPicker();
var data = [];
data[0]=Titanium.UI.createPickerRow({title:'Bananas'});
data[1]=Titanium.UI.createPickerRow({title:'Strawberries'});
data[2]=Titanium.UI.createPickerRow({title:'Mangos'});
data[3]=Titanium.UI.createPickerRow({title:'Grapes'});
picker.add(data);
~~~

- example : Custom View for Row

In this example, we use a custom label for each row in a column.

~~~
var picker = Titanium.UI.createPicker();
var row = Titanium.UI.createPickerRow();
var label = Titanium.UI.createLabel({
	text:text,
	font:{fontSize:24,fontWeight:'bold'},
	color:text,
	width:'auto',
	height:'auto'
});
row.add(label);
picker.add(row);
~~~


- notes

Android does not support the DateTime or Count Down Timer picker type.

**/

typedef PickerChangeEvent = 
{ > Event,
	column:Dynamic,
	columnIndex:Int,
	row:Dynamic,
	rowIndex:Int,
	selectedValue:Array<Dynamic>
}

@:native("Titanium.UI.Picker")
extern class Picker extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):Picker
		return titanium.mobile.UI.createPicker(params)
		
	// events
	public static inline var CHANGE_EVENT = "change";
	
	// properties
	public var columns:Array<Dynamic>;
	public var countDownDuration:Float;
	public var locale:String;
	public var minDate:Date;
	public var maxDate:Date;
	public var minuteInterval:Int;
	public var selectionIndicator:Bool;
	public var type:Int;
	public var value:Date;
	
	// methods
	public function setSelectedRow(col:Int, row:Int, animated:Bool):Void;
	public function getSelectedRow(colIndex:Int):Dynamic;
	public function reloadColumn(column:Dynamic):Void;
}