package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Blob;
import titanium.mobile.core.Dispatcher;

/**
TableViewRow class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.TableViewRow-object.html

- namespace

Titanium.UI.TableViewRow

- type

object

- subtype

view

- description

A TableView row object created by the method `Titanium.UI.createTableViewRow`.

- since

0.9

- platforms

android, iphone, ipad

- properties

height[float]: the height of the row. specify `auto` to calculate the row height based on the size of the child views of the row
className[string]: the class name of the table. each table view cell must have a unique class name if the cell layout is different. however, use the same name for rows that have the same structural layout (even if the content is different) to provide maximum rendering performance.
layout[string]: the layout algorithm to use for the layout. either absolute (default) or vertical.
title[string]: the title cell value. do not specify if using views as children of the row
backgroundColor[string]: the background cell color
backgroundImage[string]: the background cell image
selectedBackgroundImage[string]: the background image to render when the row cell is selected
selectedBackgroundColor[string]: the background color to render when the row cell is selected
leftImage[string]: image url to render in the left image area of the row cell
rightImage[string]: image url to render in the right image area of the row cell
hasChild[boolean]: render a system provided right arrow in the right image area of the row cell
hasCheck[boolean]: render a system provided check mark in the right image area of the row cell
hasDetail[boolean]: render a system provided blue indicator icon in the right image area of the row cell
indentionLevel[int]: the indention level for the cell (defaults to 0)
selectionStyle[int]: a selection style constant to control the selection color. For iPhone, use the constants from Titanium.UI.iPhone.TableViewCellSelectionStyle
selectedColor[string]: color of the row during selection
color[string]: default color of the row when not selected

#
children[Array of Object]: Array of object add to the tableViewRow

- events

click: fired when the row is clicked. row events automatically propagate to the section and table view if an event listener is not added directly to the cell.

- event : click

index: table view row index
section: table view section object
row: table view row object
detail: boolean to indicate if the right area was clicked
searchMode: boolean to indicate if the table is in search mode
rowData: table view row data object


- example : Simple Table View Row example

In this simple example, we create a table view row with a red square in the cell.

~~~
var row = Titanium.UI.createTableViewRow();
var view = Titanium.UI.createView({backgroundColor:'red',width:20,height:20});
row.height = 'auto';
row.add(view);
~~~

- notes

Make sure you set the tableClass on each row instance if using more than one type of row layout. You can use the same value for each instance of a row where the layout is the same - even if the value of the elements inside the row have different values.  For example, if the text is the only thing different between two cells but the layout is the same, both row instances should have the same value for tableClass.

You can listen for table row events on all rows by adding an event listener to the table view instance.  Events automatically propagate to parent views.


**/


typedef TableViewRowClickEvent = 
{ > ClickEvent,
	detail:Bool,
	index:Int,
	row:TableViewRow,
	rowData:Dynamic,
	searchMode:Bool,
	section:TableViewSection
}

@:native("Titanium.UI.TableViewRow")
extern class TableViewRow extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):TableViewRow
		return titanium.mobile.UI.createTableViewRow(params)
		
	// events
	public inline static var CLICK_EVENT = "click";
	
	// properties
	public var className:String;
	public var color:String;
	public var hasCheck:Bool;
	public var hasChild:Bool;
	public var hasDetail:Bool;
	public var indentionLevel:Int;
	public var layout:String;
	public var leftImage:String;
	public var rightImage:String;
	public var selectedBackgroundColor:String;
	public var selectedBackgroundImage:String;
	public var selectedColor:String;
	public var selectionStyle:String;
	public var title:String;
	public var children:Array<Dynamic>;
}