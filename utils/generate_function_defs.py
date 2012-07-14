import itertools

# overly complicated script for generating the uniform/vertexAttrib function families


HAXE_TYPE_MAP = dict(
	i='GLint',
	f='GLfloat'
)


FAMILY_DEFS = [
	('Void', 'uniform', [1,2,3,4], ['f','i'], 'location:WebGLUniformLocation', 'p'),
	('Void', 'uniform', [1,2,3,4], ['fv','iv'], 'location:WebGLUniformLocation, value:TypedArray', ''),
	('Void', 'uniformMatrix', [2,3,4], ['fv'], 'location:WebGLUniformLocation, transpose:GLboolean, value:TypedArray', ''),
	('Void', 'vertexAttrib', [1,2,3,4], ['f'], 'index:GLuint', 'p'),
	('Void', 'vertexAttrib', [1,2,3,4], ['fv'], 'index:GLuint, value:TypedArray', ''),
]


def render_family(return_type, base_name, num_params, param_types,
	static_params, repeated_param=None
):
	TEMPLATE = 'public function %s%%s(%s%%s):%s;' % (
		base_name, static_params, return_type
	)
	type_param_combos = itertools.product(num_params, param_types)
	for num_p, type_p in type_param_combos:
		extra_params = ''
		if repeated_param:
			extra_params = ', '.join([
				repeated_param + str(i) + ':' + HAXE_TYPE_MAP[type_p]
				for i in range(num_p)
			])
			extra_params = ', ' + extra_params
		print TEMPLATE % (str(num_p) + type_p, extra_params)


for family_def in FAMILY_DEFS:
    render_family(*family_def)
