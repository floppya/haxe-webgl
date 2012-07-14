package js.webgl;


@:native('WebGLContextAttributes')
extern interface WebGLContextAttributes 
{
	public var alpha:Bool;
	public var depth:Bool;
	public var stencil:Bool;
	public var antialias:Bool;
	public var premultipliedAlpha:Bool;
	public var preserveDrawingBuffer:Bool;
}
