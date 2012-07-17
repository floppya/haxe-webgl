package js.webgl;

import js.webgl.WebGLTypes;


@:native('WebGLRenderingContext')
extern interface WebGLRenderingContext 
{
	public var canvas:Dynamic;
	public var drawingBufferWidth:GLsizei;
	public var drawingBufferHeight:GLsizei;
	
	// Per-fragment operations
	public function blendColor(r:GLclampf, g:GLclampf, b:GLclampf):Void;
	public function blendEquation(modeRGB:GLenum, modeAlpha:GLenum):Void;
	public function blendFunc(sfactor:GLenum, dfactor:GLenum):Void;
	public function blendFuncSeparate(srcRGB:GLenum, dstRGB:GLenum, srcAlpha:GLenum, dstAlpha:GLenum):Void;
	public function depthFunc(func:GLenum):Void;
	public function sampleCoverage(value:GLclampf, invert:GLboolean):Void;
	public function stencilFunc(func:GLenum, ref:GLint, mask:GLuint):Void;
	public function stencilFuncSeparate(face:GLenum, func:GLenum, ref:GLenum, mask:GLenum):Void;
	public function stencilOp(fail:GLenum, zfail:GLenum, zpass:GLenum):Void;
	
	// Detect and enable extensions
	public function getSupportedExtensions():Array<String>;
	public function getExtension(name:String):WebGLObject;
	
	// Whole framebuffer operations
	public function clear(mask:GLbitfield):Void;
	public function clearColor(r:GLclampf, g:GLclampf, b:GLclampf, a:GLclampf):Void;
	public function clearDepth(depth:GLclampf):Void;
	public function clearStencil(s:GLint):Void;
	public function colorMask(r:GLboolean, g:GLboolean, b:GLboolean, a:GLboolean):Void;
	public function depthMask(flag:GLboolean):Void;
	public function stencilMask(mask:GLenum):Void;
	public function stencilMaskSeparate(face:GLenum, mask:GLenum):Void;
	
	// Buffer objects
	public function bindBuffer(target:GLenum, buffer:WebGLBuffer):Void;
	public function bufferData(target:GLenum, object:Dynamic, usage:GLenum):Void;
	public function bufferSubData(target:GLenum, offset:GLintptr, data:Dynamic):Void;
	public function createBuffer():WebGLBuffer;
	public function deleteBuffer(buffer:WebGLBuffer):Void;
	public function getBufferParameter(target:GLenum, pname:GLenum):Dynamic;
	public function isBuffer(object:WebGLObject):GLboolean;
	
	// View and clip
	public function depthRange(zNear:GLclampf, zFar:GLclampf):Void;
	public function scissor(x:GLint, y:GLint, width:GLsizei, height:GLsizei):Void;
	public function viewport(x:GLint, y:GLint, width:GLsizei, height:GLsizei):Void;
	
	// Rasterization
	public function cullFace(mode:GLenum):Void;
	public function frontFace(mode:GLenum):Void;
	public function lineWidth(width:GLfloat):Void;
	public function polygonOffset(factor:GLfloat, units:GLfloat):Void;
	
	// Detect context lost events
	public function isContextLost():GLboolean;
	
	// Programs and shaders
	public function attachShader(program:WebGLProgram, shader:WebGLShader):Void;
	public function bindAttribLocation(program:WebGLProgram, index:GLuint, name:String):Void;
	public function compileShader(shader:WebGLShader):Void;
	public function createProgram():WebGLProgram;
	public function createShader(type:GLenum):WebGLShader;
	public function deleteProgram(program:WebGLProgram):Void;
	public function deleteShader(shader:WebGLShader):Void;
	public function getAttachedShaders():Array<WebGLShader>;
	public function getProgramParameter(program:WebGLProgram, pname:GLenum):Dynamic;
	public function getProgramInfoLog(program:WebGLProgram):String;
	public function getShaderParameter(shader:WebGLShader, pname:GLenum):Dynamic;
	public function getShaderInfoLog(shader:WebGLShader):String;
	public function getShaderSource(shader:WebGLShader):String;
	public function isProgram(program:WebGLObject):GLboolean;
	public function isShader(shader:WebGLObject):GLboolean;
	public function linkProgram(program:WebGLProgram):Void;
	public function shaderSource(shader:WebGLShader, source:String):Void;
	public function useProgram(program:WebGLProgram):Void;
	public function validateProgram(program:WebGLProgram):Void;
	
	// Uniforms and attributes
	public function disableVertexAttribArray(index:GLuint):Void;
	public function enableVertexAttribArray(index:GLuint):Void;
	public function getActiveAttrib(program:WebGLProgram, index:GLuint):WebGLObject;
	public function getActiveUniform(program:WebGLProgram, index:GLuint):WebGLObject;
	public function getAttribLocation(program:WebGLProgram, name:String):GLint;
	public function getUniform(program:WebGLProgram, location:WebGLUniformLocation):Dynamic;
	public function getUniformLocation(program:WebGLProgram, name:String):WebGLUniformLocation;
	public function getVertexAttrib(index:GLuint, pname:GLenum):Dynamic;
	public function getVertexAttribOffset(index:GLuint, pname:GLenum):GLsizeiptr;
	public function uniform1f(location:WebGLUniformLocation, p0:GLfloat):Void;
	public function uniform1i(location:WebGLUniformLocation, p0:GLint):Void;
	public function uniform2f(location:WebGLUniformLocation, p0:GLfloat, p1:GLfloat):Void;
	public function uniform2i(location:WebGLUniformLocation, p0:GLint, p1:GLint):Void;
	public function uniform3f(location:WebGLUniformLocation, p0:GLfloat, p1:GLfloat, p2:GLfloat):Void;
	public function uniform3i(location:WebGLUniformLocation, p0:GLint, p1:GLint, p2:GLint):Void;
	public function uniform4f(location:WebGLUniformLocation, p0:GLfloat, p1:GLfloat, p2:GLfloat, p3:GLfloat):Void;
	public function uniform4i(location:WebGLUniformLocation, p0:GLint, p1:GLint, p2:GLint, p3:GLint):Void;
	public function uniform1fv(location:WebGLUniformLocation, value:Float32Array):Void;
	public function uniform1iv(location:WebGLUniformLocation, value:Int32Array):Void;
	public function uniform2fv(location:WebGLUniformLocation, value:Float32Array):Void;
	public function uniform2iv(location:WebGLUniformLocation, value:Int32Array):Void;
	public function uniform3fv(location:WebGLUniformLocation, value:Float32Array):Void;
	public function uniform3iv(location:WebGLUniformLocation, value:Int32Array):Void;
	public function uniform4fv(location:WebGLUniformLocation, value:Float32Array):Void;
	public function uniform4iv(location:WebGLUniformLocation, value:Int32Array):Void;
	public function uniformMatrix2fv(location:WebGLUniformLocation, transpose:GLboolean, value:Float32Array):Void;
	public function uniformMatrix3fv(location:WebGLUniformLocation, transpose:GLboolean, value:Float32Array):Void;
	public function uniformMatrix4fv(location:WebGLUniformLocation, transpose:GLboolean, value:Float32Array):Void;
	public function vertexAttrib1f(index:GLuint, p0:GLfloat):Void;
	public function vertexAttrib2f(index:GLuint, p0:GLfloat, p1:GLfloat):Void;
	public function vertexAttrib3f(index:GLuint, p0:GLfloat, p1:GLfloat, p2:GLfloat):Void;
	public function vertexAttrib4f(index:GLuint, p0:GLfloat, p1:GLfloat, p2:GLfloat, p3:GLfloat):Void;
	public function vertexAttrib1fv(index:GLuint, value:Float32Array):Void;
	public function vertexAttrib2fv(index:GLuint, value:Float32Array):Void;
	public function vertexAttrib3fv(index:GLuint, value:Float32Array):Void;
	public function vertexAttrib4fv(index:GLuint, value:Float32Array):Void;
	public function vertexAttribPointer(index:GLuint, size:GLint, type:GLenum, normalized:GLboolean, stride:GLsizei, offset:GLintptr):Void;
	
	// Texture objects
	public function activeTexture(texture:GLenum):Void;
	public function bindTexture(target:GLenum, texture:WebGLTexture):Void;
	public function copyTexImage2D(target:GLenum, level:GLint, internalformat:GLenum, x:GLint, y:GLint, width:GLsizei, height:GLsizei, border:GLint):Void;
	public function copyTexSubImage2D(target:GLenum, level:GLint, xoffset:GLint, yoffset:GLint, x:GLint, y:GLint, width:GLsizei, height:GLsizei, border:GLint):Void;	
	public function createTexture():WebGLTexture;
	public function deleteTexture(texture:WebGLTexture):Void;
	public function generateMipmap(target:GLenum):Void;
	public function getTexParameter(target:GLenum, pname:GLenum):Dynamic;
	public function isTexture(texture:WebGLObject):GLboolean;
	// TODO: conflicting overloaded function here:
	//public function texImage2D(target:GLenum, level:GLint, internalformat:GLenum, width:GLsizei, height:GLsizei, border:GLint, format:GLenum, type:GLenum, pixels:Dynamic):Void;
	public function texImage2D(target:GLenum, level:GLint, internalformat:GLenum, format:GLenum, type:GLenum, sourceObject:Dynamic):Void;
	public function texParameterf(target:GLenum, pname:GLenum, param:GLfloat):Void;
	public function texParameteri(target:GLenum, pname:GLenum, param:GLint):Void;
	// TODO: this is also overloaded in the spec:
	public function texSubImage2D(target:GLenum, level:GLint, xoffset:GLint, yoffset:GLint, width:GLsizei, height:GLsizei, format:GLenum, type:GLenum, pixels:Dynamic):Void;	
	
	// Writing to the draw buffer
	public function drawArrays(mode:GLenum, first:GLint, count:GLsizei):Void;
	public function drawElements(mode:GLenum, count:GLsizei, type:GLenum, offset:GLintptr):Void;
	
	// Special functions
	public function disable(cap:GLenum):Void;
	public function enable(cap:GLenum):Void;
	public function finish():Void;
	public function flush():Void;
	public function getError():GLenum;
	public function getParameter(pname:GLenum):Dynamic;
	public function hint(target:GLenum, mode:GLenum):Void;
	public function isEnabled(cap:GLenum):GLboolean;
	public function pixelStorei(pname:GLenum, param:GLint):Void;
	
	// Renderbuffer objects
	public function bindRenderbuffer(target:GLenum, renderbuffer:WebGLRenderbuffer):Void;
	public function createRenderbuffer():WebGLRenderbuffer;
	public function deleteRenderbuffer(renderbuffer:WebGLRenderbuffer):Void;
	public function getRenderbufferParameter(target:GLenum, pname:GLenum):Dynamic;
	public function isRenderbuffer(object:WebGLObject):GLboolean;
	public function renderbufferStorage(target:GLenum, internalformat:GLenum, width:GLsizei, height:GLsizei):Void;
	
	// Read back pixels
	public function readPixels(x:GLint, y:GLint, width:GLsizei, height:GLsizei, format:GLenum, type:GLenum, pixels:Dynamic):Void;
	
	// Framebuffer objects
	public function bindFramebuffer(target:GLenum, framebuffer:WebGLObject):Void;
	public function checkFramebufferStatus(target:GLenum):GLenum;
	public function createFramebuffer():WebGLObject;
	public function deleteFramebuffer(buffer:WebGLObject):Void;
	public function framebufferRenderbuffer(target:GLenum, attachment:GLenum, renderbuffertarget:GLenum, renderbuffer:WebGLRenderbuffer):Void;
	public function isFramebuffer(framebuffer:WebGLObject):GLboolean;
	public function framebufferTexture2D(target:GLenum, attachment:GLenum, textarget:GLenum, texture:WebGLTexture, level:GLint):Void;
	public function getFramebufferAttachmentParameter(target:GLenum, attachment:GLenum, pname:GLenum):Dynamic;
	
	/* ClearBufferMask */
	public var DEPTH_BUFFER_BIT:GLenum;
	public var STENCIL_BUFFER_BIT:GLenum;
	public var COLOR_BUFFER_BIT:GLenum;
	
	/* BeginMode */
	public var POINTS:GLenum;
	public var LINES:GLenum;
	public var LINE_LOOP:GLenum;
	public var LINE_STRIP:GLenum;
	public var TRIANGLES:GLenum;
	public var TRIANGLE_STRIP:GLenum;
	public var TRIANGLE_FAN:GLenum;
	
	/* BlendingFactorDest */
	public var ZERO:GLenum;
    public var ONE:GLenum;
    public var SRC_COLOR:GLenum;
    public var ONE_MINUS_SRC_COLOR:GLenum;
    public var SRC_ALPHA:GLenum;
    public var ONE_MINUS_SRC_ALPHA:GLenum;
    public var DST_ALPHA:GLenum;
    public var ONE_MINUS_DST_ALPHA:GLenum;
	
	/* BlendingFactorSrc */
	public var DST_COLOR:GLenum;
    public var ONE_MINUS_DST_COLOR:GLenum;
    public var SRC_ALPHA_SATURATE:GLenum;
	
	/* BlendEquationSeparate */
    public var FUNC_ADD:GLenum;
    public var BLEND_EQUATION:GLenum;
    public var BLEND_EQUATION_RGB:GLenum;
    public var BLEND_EQUATION_ALPHA:GLenum;

	/* BlendSubtract */
    public var FUNC_SUBTRACT:GLenum;
    public var FUNC_REVERSE_SUBTRACT:GLenum;
    
    /* Separate Blend Functions */
    public var BLEND_DST_RGB:GLenum;
    public var BLEND_SRC_RGB:GLenum;
    public var BLEND_DST_ALPHA:GLenum;
    public var BLEND_SRC_ALPHA:GLenum;
    public var CONSTANT_COLOR:GLenum;
    public var ONE_MINUS_CONSTANT_COLOR:GLenum;
    public var CONSTANT_ALPHA:GLenum;
    public var ONE_MINUS_CONSTANT_ALPHA:GLenum;
    public var BLEND_COLOR:GLenum;
    
    /* Buffer Objects */
    public var ARRAY_BUFFER:GLenum;
    public var ELEMENT_ARRAY_BUFFER:GLenum;
    public var ARRAY_BUFFER_BINDING:GLenum;
    public var ELEMENT_ARRAY_BUFFER_BINDING:GLenum;
    
    public var STREAM_DRAW:GLenum;
    public var STATIC_DRAW:GLenum;
    public var DYNAMIC_DRAW:GLenum;
    
    public var BUFFER_SIZE:GLenum;
    public var BUFFER_USAGE:GLenum;
    
    public var CURRENT_VERTEX_ATTRIB:GLenum;
    
    /* CullFaceMode */
    public var FRONT:GLenum;
    public var BACK:GLenum;
    public var FRONT_AND_BACK:GLenum;
    
    /* DepthFunction */
    /*      NEVER */
    /*      LESS */
    /*      EQUAL */
    /*      LEQUAL */
    /*      GREATER */
    /*      NOTEQUAL */
    /*      GEQUAL */
    /*      ALWAYS */
    
    /* EnableCap */
    /* TEXTURE_2D */
    public var CULL_FACE:GLenum;
    public var BLEND:GLenum;
    public var DITHER:GLenum;
    public var STENCIL_TEST:GLenum;
    public var DEPTH_TEST:GLenum;
    public var SCISSOR_TEST:GLenum;
    public var POLYGON_OFFSET_FILL:GLenum;
    public var SAMPLE_ALPHA_TO_COVERAGE:GLenum;
    public var SAMPLE_COVERAGE:GLenum;
    
    /* ErrorCode */
    public var NO_ERROR:GLenum;
    public var INVALID_ENUM:GLenum;
    public var INVALID_VALUE:GLenum;
    public var INVALID_OPERATION:GLenum;
    public var OUT_OF_MEMORY:GLenum;
    
    /* FrontFaceDirection */
    public var CW:GLenum;
    public var CCW:GLenum;
    
    /* GetPName */
    public var LINE_WIDTH:GLenum;
    public var ALIASED_POINT_SIZE_RANGE:GLenum;
    public var ALIASED_LINE_WIDTH_RANGE:GLenum;
    public var CULL_FACE_MODE:GLenum;
    public var FRONT_FACE:GLenum;
    public var DEPTH_RANGE:GLenum;
    public var DEPTH_WRITEMASK:GLenum;
    public var DEPTH_CLEAR_VALUE:GLenum;
    public var DEPTH_FUNC:GLenum;
    public var STENCIL_CLEAR_VALUE:GLenum;
    public var STENCIL_FUNC:GLenum;
    public var STENCIL_FAIL:GLenum;
    public var STENCIL_PASS_DEPTH_FAIL:GLenum;
    public var STENCIL_PASS_DEPTH_PASS:GLenum;
    public var STENCIL_REF:GLenum;
    public var STENCIL_VALUE_MASK:GLenum;
    public var STENCIL_WRITEMASK:GLenum;
    public var STENCIL_BACK_FUNC:GLenum;
    public var STENCIL_BACK_FAIL:GLenum;
    public var STENCIL_BACK_PASS_DEPTH_FAIL:GLenum;
    public var STENCIL_BACK_PASS_DEPTH_PASS:GLenum;
    public var STENCIL_BACK_REF:GLenum;
    public var STENCIL_BACK_VALUE_MASK:GLenum;
    public var STENCIL_BACK_WRITEMASK:GLenum;
    public var VIEWPORT:GLenum;
    public var SCISSOR_BOX:GLenum;
    /*      SCISSOR_TEST */
    public var COLOR_CLEAR_VALUE:GLenum;
    public var COLOR_WRITEMASK:GLenum;
    public var UNPACK_ALIGNMENT:GLenum;
    public var PACK_ALIGNMENT:GLenum;
    public var MAX_TEXTURE_SIZE:GLenum;
    public var MAX_VIEWPORT_DIMS:GLenum;
    public var SUBPIXEL_BITS:GLenum;
    public var RED_BITS:GLenum;
    public var GREEN_BITS:GLenum;
    public var BLUE_BITS:GLenum;
    public var ALPHA_BITS:GLenum;
    public var DEPTH_BITS:GLenum;
    public var STENCIL_BITS:GLenum;
    public var POLYGON_OFFSET_UNITS:GLenum;
    /*      POLYGON_OFFSET_FILL */
    public var POLYGON_OFFSET_FACTOR:GLenum;
    public var TEXTURE_BINDING_2D:GLenum;
    public var SAMPLE_BUFFERS:GLenum;
    public var SAMPLES:GLenum;
    public var SAMPLE_COVERAGE_VALUE:GLenum;
    public var SAMPLE_COVERAGE_INVERT:GLenum;
    
    /* GetTextureParameter */
    /*      TEXTURE_MAG_FILTER */
    /*      TEXTURE_MIN_FILTER */
    /*      TEXTURE_WRAP_S */
    /*      TEXTURE_WRAP_T */
    
    public var NUM_COMPRESSED_TEXTURE_FORMATS:GLenum;
    public var COMPRESSED_TEXTURE_FORMATS:GLenum;
    
    /* HintMode */
    public var DONT_CARE:GLenum;
    public var FASTEST:GLenum;
    public var NICEST:GLenum;
    
    /* HintTarget */
    public var GENERATE_MIPMAP_HINT:GLenum;
    
    /* DataType */
    public var BYTE:GLenum;
    public var UNSIGNED_BYTE:GLenum;
    public var SHORT:GLenum;
    public var UNSIGNED_SHORT:GLenum;
    public var INT:GLenum;
    public var UNSIGNED_INT:GLenum;
    public var FLOAT:GLenum;
    
    /* PixelFormat */
    public var DEPTH_COMPONENT:GLenum;
    public var ALPHA:GLenum;
    public var RGB:GLenum;
    public var RGBA:GLenum;
    public var LUMINANCE:GLenum;
    public var LUMINANCE_ALPHA:GLenum;
    
    /* PixelType */
    /*      UNSIGNED_BYTE */
    public var UNSIGNED_SHORT_4_4_4_4:GLenum;
    public var UNSIGNED_SHORT_5_5_5_1:GLenum;
    public var UNSIGNED_SHORT_5_6_5:GLenum;
    
    /* Shaders */
    public var FRAGMENT_SHADER:GLenum;
    public var VERTEX_SHADER:GLenum;
    public var MAX_VERTEX_ATTRIBS:GLenum;
    public var MAX_VERTEX_UNIFORM_VECTORS:GLenum;
    public var MAX_VARYING_VECTORS:GLenum;
    public var MAX_COMBINED_TEXTURE_IMAGE_UNITS:GLenum;
    public var MAX_VERTEX_TEXTURE_IMAGE_UNITS:GLenum;
    public var MAX_TEXTURE_IMAGE_UNITS:GLenum;
    public var MAX_FRAGMENT_UNIFORM_VECTORS:GLenum;
    public var SHADER_TYPE:GLenum;
    public var DELETE_STATUS:GLenum;
    public var LINK_STATUS:GLenum;
    public var VALIDATE_STATUS:GLenum;
    public var ATTACHED_SHADERS:GLenum;
    public var ACTIVE_UNIFORMS:GLenum;
    public var ACTIVE_ATTRIBUTES:GLenum;
    public var SHADING_LANGUAGE_VERSION:GLenum;
    public var CURRENT_PROGRAM:GLenum;
    
    /* StencilFunction */
    public var NEVER:GLenum;
    public var LESS:GLenum;
    public var EQUAL:GLenum;
    public var LEQUAL:GLenum;
    public var GREATER:GLenum;
    public var NOTEQUAL:GLenum;
    public var GEQUAL:GLenum;
    public var ALWAYS:GLenum;
    
    /* StencilOp */
    /*      ZERO */
    public var KEEP:GLenum;
    public var REPLACE:GLenum;
    public var INCR:GLenum;
    public var DECR:GLenum;
    public var INVERT:GLenum;
    public var INCR_WRAP:GLenum;
    public var DECR_WRAP:GLenum;
    
    /* StringName */
    public var VENDOR:GLenum;
    public var RENDERER:GLenum;
    public var VERSION:GLenum;
    
    /* TextureMagFilter */
    public var NEAREST:GLenum;
    public var LINEAR:GLenum;
    
    /* TextureMinFilter */
    /*      NEAREST */
    /*      LINEAR */
    public var NEAREST_MIPMAP_NEAREST:GLenum;
    public var LINEAR_MIPMAP_NEAREST:GLenum;
    public var NEAREST_MIPMAP_LINEAR:GLenum;
    public var LINEAR_MIPMAP_LINEAR:GLenum;
    
    /* TextureParameterName */
    public var TEXTURE_MAG_FILTER:GLenum;
    public var TEXTURE_MIN_FILTER:GLenum;
    public var TEXTURE_WRAP_S:GLenum;
    public var TEXTURE_WRAP_T:GLenum;
    
    /* TextureTarget */
    public var TEXTURE_2D:GLenum;
    public var TEXTURE:GLenum;
    
    public var TEXTURE_CUBE_MAP:GLenum;
    public var TEXTURE_BINDING_CUBE_MAP:GLenum;
    public var TEXTURE_CUBE_MAP_POSITIVE_X:GLenum;
    public var TEXTURE_CUBE_MAP_NEGATIVE_X:GLenum;
    public var TEXTURE_CUBE_MAP_POSITIVE_Y:GLenum;
    public var TEXTURE_CUBE_MAP_NEGATIVE_Y:GLenum;
    public var TEXTURE_CUBE_MAP_POSITIVE_Z:GLenum;
    public var TEXTURE_CUBE_MAP_NEGATIVE_Z:GLenum;
    public var MAX_CUBE_MAP_TEXTURE_SIZE:GLenum;
    
    /* TextureUnit */
    public var TEXTURE0:GLenum;
    public var TEXTURE1:GLenum;
    public var TEXTURE2:GLenum;
    public var TEXTURE3:GLenum;
    public var TEXTURE4:GLenum;
    public var TEXTURE5:GLenum;
    public var TEXTURE6:GLenum;
    public var TEXTURE7:GLenum;
    public var TEXTURE8:GLenum;
    public var TEXTURE9:GLenum;
    public var TEXTURE10:GLenum;
    public var TEXTURE11:GLenum;
    public var TEXTURE12:GLenum;
    public var TEXTURE13:GLenum;
    public var TEXTURE14:GLenum;
    public var TEXTURE15:GLenum;
    public var TEXTURE16:GLenum;
    public var TEXTURE17:GLenum;
    public var TEXTURE18:GLenum;
    public var TEXTURE19:GLenum;
    public var TEXTURE20:GLenum;
    public var TEXTURE21:GLenum;
    public var TEXTURE22:GLenum;
    public var TEXTURE23:GLenum;
    public var TEXTURE24:GLenum;
    public var TEXTURE25:GLenum;
    public var TEXTURE26:GLenum;
    public var TEXTURE27:GLenum;
    public var TEXTURE28:GLenum;
    public var TEXTURE29:GLenum;
    public var TEXTURE30:GLenum;
    public var TEXTURE31:GLenum;
    public var ACTIVE_TEXTURE:GLenum;
    
    /* TextureWrapMode */
    public var REPEAT:GLenum;
    public var CLAMP_TO_EDGE:GLenum;
    public var MIRRORED_REPEAT:GLenum;
    
    /* Uniform Types */
    public var FLOAT_VEC2:GLenum;
    public var FLOAT_VEC3:GLenum;
    public var FLOAT_VEC4:GLenum;
    public var INT_VEC2:GLenum;
    public var INT_VEC3:GLenum;
    public var INT_VEC4:GLenum;
    public var BOOL:GLenum;
    public var BOOL_VEC2:GLenum;
    public var BOOL_VEC3:GLenum;
    public var BOOL_VEC4:GLenum;
    public var FLOAT_MAT2:GLenum;
    public var FLOAT_MAT3:GLenum;
    public var FLOAT_MAT4:GLenum;
    public var SAMPLER_2D:GLenum;
    public var SAMPLER_CUBE:GLenum;
    
    /* Vertex Arrays */
    public var VERTEX_ATTRIB_ARRAY_ENABLED:GLenum;
    public var VERTEX_ATTRIB_ARRAY_SIZE:GLenum;
    public var VERTEX_ATTRIB_ARRAY_STRIDE:GLenum;
    public var VERTEX_ATTRIB_ARRAY_TYPE:GLenum;
    public var VERTEX_ATTRIB_ARRAY_NORMALIZED:GLenum;
    public var VERTEX_ATTRIB_ARRAY_POINTER:GLenum;
    public var VERTEX_ATTRIB_ARRAY_BUFFER_BINDING:GLenum;
    
    /* Shader Source */
    public var COMPILE_STATUS:GLenum;
    
    /* Shader Precision-Specified Types */
    public var LOW_FLOAT:GLenum;
    public var MEDIUM_FLOAT:GLenum;
    public var HIGH_FLOAT:GLenum;
    public var LOW_INT:GLenum;
    public var MEDIUM_INT:GLenum;
    public var HIGH_INT:GLenum;
    
    /* Framebuffer Object. */
    public var FRAMEBUFFER:GLenum;
    public var RENDERBUFFER:GLenum;
    
    public var RGBA4:GLenum;
    public var RGB5_A1:GLenum;
    public var RGB565:GLenum;
    public var DEPTH_COMPONENT16:GLenum;
    public var STENCIL_INDEX:GLenum;
    public var STENCIL_INDEX8:GLenum;
    public var DEPTH_STENCIL:GLenum;
    
    public var RENDERBUFFER_WIDTH:GLenum;
    public var RENDERBUFFER_HEIGHT:GLenum;
    public var RENDERBUFFER_INTERNAL_FORMAT:GLenum;
    public var RENDERBUFFER_RED_SIZE:GLenum;
    public var RENDERBUFFER_GREEN_SIZE:GLenum;
    public var RENDERBUFFER_BLUE_SIZE:GLenum;
    public var RENDERBUFFER_ALPHA_SIZE:GLenum;
    public var RENDERBUFFER_DEPTH_SIZE:GLenum;
    public var RENDERBUFFER_STENCIL_SIZE:GLenum;
    
    public var FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE:GLenum;
    public var FRAMEBUFFER_ATTACHMENT_OBJECT_NAME:GLenum;
    public var FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL:GLenum;
    public var FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE:GLenum;
    
    public var COLOR_ATTACHMENT0:GLenum;
    public var DEPTH_ATTACHMENT:GLenum;
    public var STENCIL_ATTACHMENT:GLenum;
    public var DEPTH_STENCIL_ATTACHMENT:GLenum;
    
    public var NONE:GLenum;
    
    public var FRAMEBUFFER_COMPLETE:GLenum;
    public var FRAMEBUFFER_INCOMPLETE_ATTACHMENT:GLenum;
    public var FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT:GLenum;
    public var FRAMEBUFFER_INCOMPLETE_DIMENSIONS:GLenum;
    public var FRAMEBUFFER_UNSUPPORTED:GLenum;
    
    public var FRAMEBUFFER_BINDING:GLenum;
    public var RENDERBUFFER_BINDING:GLenum;
    public var MAX_RENDERBUFFER_SIZE:GLenum;
    
    public var INVALID_FRAMEBUFFER_OPERATION:GLenum;
    
    /* WebGL-specific enums */
    public var UNPACK_FLIP_Y_WEBGL:GLenum;
    public var UNPACK_PREMULTIPLY_ALPHA_WEBGL:GLenum;
    public var CONTEXT_LOST_WEBGL:GLenum;
    public var UNPACK_COLORSPACE_CONVERSION_WEBGL:GLenum;
    public var BROWSER_DEFAULT_WEBGL:GLenum;
}
	