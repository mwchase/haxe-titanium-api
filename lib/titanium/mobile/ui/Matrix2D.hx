package titanium.mobile.ui;
import titanium.mobile.core.Dispatcher;

/**
2DMatrix class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.2DMatrix-object

- namespace

Titanium.UI.2DMatrix

- type

object

- subtype

proxy

- description

The 2DMatrix is created by `Titanium.UI.create2DMatrix`.  The 2D Matrix is an object for holding values for an affine transformation matrix. A 2D matrix is used to rotate, scale, translate, or skew the objects in a two-dimensional space. A 2D matrix is represented by a 3 by 3 matrix. Because the third column is always (0,0,1), the data structure contains values for only the first two columns.

- since

0.9

- platforms

android, iphone, ipad

- properties

a[float]:The entry at position [1,1] in the matrix.
b[float]:The entry at position [1,2] in the matrix.
c[float]:The entry at position [2,1] in the matrix.
d[float]:The entry at position [2,2] in the matrix.
tx[float]:The entry at position [3,1] in the matrix.
ty[float]:The entry at position [3,2] in the matrix.

- methods

translate: Returns a matrix constructed by translating an existing matrix
scale: Returns a matrix constructed by scaling an existing matrix
rotate: Returns a matrix constructed by rotating an existing matrix
invert: Returns a matrix constructed by inverting an existing matrix
multiply: Returns a matrix constructed by combining two existing matrix.

- method : translate, object

tx[float]: The value by which to move x values with the matrix
ty[float]: The value by which to move y values with the matrix

- method : scale, object

sx[float]: The value by which to scale x values of the matrix
sy[float]: The value by which to scale y values of the matrix

- method : rotate, object

angle[float]: The angle, in degrees, by which to rotate the matrix. A positive value specifies counterclockwise rotation and a negative value specifies clockwise rotation.

- method : multiply, object

t2[object]: The second matrix. This matrix is concatenated to the matrix instance against which the function is invoked.  The result of this function is the first matrix multiplied by the second matrix. You might perform several multiplications in order to create a single matrix that contains the cumulative effects of several transformations. Note that matrix operations are not commutative - the order in which you concatenate matrices is important. That is, the result of multiplying matrix t1 by matrix t2 does not necessarily equal the result of multiplying matrix t2 by matrix t1.

- notes

You create an `identity matrix` by creating a 2D Matrix with an empty constructor.

**/

@:native("Titanium.UI.2DMatrix")
extern class Matrix2D extends Dispatcher
{
	// static constructor
	public inline static function create(?params:Dynamic):Matrix2D
		return titanium.mobile.UI.create2DMatrix(params)
	
	// properties
	public var a:Float;
	public var b:Float;
	public var c:Float;
	public var d:Float;
	public var tx:Float;
	public var ty:Float;
	
	// methods
	public function invert():Matrix2D;
	public function multiply(t2:Matrix2D):Matrix2D;
	public function rotate(angle:Float):Matrix2D;
	public function scale(sx:Float, sy:Float):Matrix2D;
	public function translate(tx:Float, ty:Float):Matrix2D;
}