package js.webgl;


typedef GLenum = Int;
typedef GLboolean = Bool;
typedef GLbitfield = Int;
typedef GLbyte = Int;
typedef GLshort = Int;
typedef GLint = Int;
typedef GLsizei = Int;
typedef GLintptr = Int;
typedef GLsizeiptr = Int;
typedef GLubyte = Int;
typedef GLushort = Int;
typedef GLuint = Int;
typedef GLfloat = Float;
typedef GLclampf = Float;

/* 
 * These extern definitions come from https://gist.github.com/2112670
 * Owner: jamesu
 * and have been slightly modified to include the native names.
 */

extern class ArrayBuffer {
  public var length: Int;
  public function new(size: Int) : Void;
}

extern class TypedArray implements Array<Dynamic> {
  public var length: Int;

  public function set(array: Dynamic, offset: Int) : Void;

// So the code doesn't complain

	/**
		Returns a new Array by appending [a] to [this].
	**/
	function concat( a : Array<Dynamic> ) : Array<Dynamic>;

	/**
		Returns a representation of an array with [sep] for separating each element.
	**/
	function join( sep : String ) : String;

	/**
		Removes the last element of the array and returns it.
	**/
	function pop() : Null<Dynamic>;

	/**
		Adds the element [x] at the end of the array.
	**/
	function push(x : Dynamic) : Int;

	/**
		Reverse the order of elements of the Array.
	**/
	function reverse() : Void;

	/**
		Removes the first element and returns it.
	**/
	function shift() : Null<Dynamic>;

	/**
		Copies the range of the array starting at [pos] up to,
		but not including, [end]. Both [pos] and [end] can be
		negative to count from the end: -1 is the last item in
		the array.
	**/
	function slice( pos : Int, ?end : Int ) : Array<Dynamic>;

	/**
		Sort the Array according to the comparison function [f].
		[f(x,y)] should return [0] if [x == y], [>0] if [x > y]
		and [<0] if [x < y].
	**/
	function sort( f : Dynamic -> Dynamic -> Int ) : Void;

	/**
		Removes [len] elements starting from [pos] an returns them.
	**/
	function splice( pos : Int, len : Int ) : Array<Dynamic>;

	/**
		Returns a displayable representation of the Array content.
	**/
	function toString() : String;

	/**
		Adds the element [x] at the start of the array.
	**/
	function unshift( x : Dynamic ) : Void;

	/**
		Inserts the element [x] at the position [pos].
		All elements after [pos] are moved one index ahead.
	**/
	function insert( pos : Int, x : Dynamic ) : Void;

	/**
		Removes the first occurence of [x].
		Returns false if [x] was not present.
		Elements are compared by using standard equality.
	**/
	function remove( x : Dynamic ) : Bool;

	/**
		Returns a copy of the Array. Dynamic values are not
		copied, only the Array structure.
	**/
	function copy() : Array<Dynamic>;

	/**
		Returns an iterator of the Array values.
	**/
	function iterator() : Iterator<Null<Dynamic>>;
}

@:native('Float32Array')
extern class Float32Array extends TypedArray {
  public function subarray(begin: Int, end: Int) : Float32Array;

  public function new(data: Dynamic, ?offset: Int , ?length: Int) : Void;
}

@:native('Int8Array')
extern class Int8Array extends TypedArray {
  public function subarray(begin: Int, end: Int) : Int8Array;

  public function new(data: Dynamic, ?offset: Int , ?length: Int) : Void;
}

@:native('Int16Array')
extern class Int16Array extends TypedArray {
  public function subarray(begin: Int, end: Int) : Int16Array;

  public function new(data: Dynamic, ?offset: Int , ?length: Int) : Void;
}

@:native('Int32Array')
extern class Int32Array extends TypedArray {
  public function subarray(begin: Int, end: Int) : Int32Array;

  public function new(data: Dynamic, ?offset: Int , ?length: Int) : Void;
}

@:native('Uint8Array')
extern class Uint8Array extends TypedArray {
  public function subarray(begin: Int, end: Int) : Uint8Array;

  public function new(data: Dynamic, ?offset: Int , ?length: Int) : Void;
}

@:native('Uint16Array')
extern class Uint16Array extends TypedArray {
  public function subarray(begin: Int, end: Int) : Uint16Array;

  public function new(data: Dynamic, ?offset: Int , ?length: Int) : Void;
}

@:native('Uint32Array')
extern class Uint32Array extends TypedArray {
  public function subarray(begin: Int, end: Int) : Uint32Array;

  public function new(data: Dynamic, ?offset: Int , ?length: Int) : Void;
}
