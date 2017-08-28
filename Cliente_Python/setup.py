from setuptools import setup

setup(

	name 				= 'Cliente API-REST',
	version 			= '0.1',
	description 		= 'Cliente construido en Python, el cual se conecta a una API-REST',
	author				= 'Diego Alejandro Lozano',
	author_email 		= 'diegoalejandrolozano@hotmail.es',
	license 			= 'GPL',
	py_modules 			= ['api_rest_cliente'],
	install_requires	= ['requests']

)