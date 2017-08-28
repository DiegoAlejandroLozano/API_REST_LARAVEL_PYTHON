#!/usr/bin/python
# -*- coding: UTF-8 -*-

import requests

class Estudiante(object):
	"""
		Esta clase hace uso de la libreria requests, para conectarse con la API-REST desarrollada
		con Laravel Framework 5.4.35
	"""

	@staticmethod
	def leer_lista_estudiantes():
		"""
			Método estático utilizado para mostrar todos los estudiantes 
			registrados en la base de datos.

			valor de retorno:
			-----------------

			respuesta -> Contiene la respuesta, ya procesada, de la API-REST.
		"""

		try:

			link = 'http://localhost/mis_archivos/API_REST_LARAVEL_PYTHON/API_REST/public/api/student'

			r = requests.get( link )
			r.encoding = 'UTF-8'

			respuesta = ''

			for i in range( len( r.json() ) ):
				
				texto		= 	'id : {id:3d}\t'
				texto		+= 	'created_at : {created_at:12s}\t'
				texto 		+=	'updated_at : {updated_at:12s}\t' 
				texto 		+= 	'nombre : {nombre:30s}\t'
				texto 		+= 	'apellido : {apellido:30s}\t'
				texto 		+=	'clase : {clase:12s}\t'
				texto 		+= 	'edad: {edad:3d}\n'

				respuesta += texto.format( 
												id				= r.json()[i]['id'],
												created_at		= r.json()[i]['created_at'],
												updated_at		= r.json()[i]['updated_at'],
												nombre			= r.json()[i]['nombre'],
												apellido		= r.json()[i]['apellido'],
												clase 			= r.json()[i]['clase'],
												edad 			= r.json()[i]['edad']
											)
			return respuesta			

		except:
			return 'Ha ocurrido un error con el servidor!'

	
	@staticmethod
	def crear_estudiante(name = '', last_name = '', classroom = '', age = 0, description = ''):
		"""
			Método utilizado para crear un nuevo estudiante

			parámetros: 
			----------

			name 		-> nombre del estudiante
			last_name 	-> apellido del estudiante
			classroom 	-> clase del estudiante
			age 		-> edad del estudiante
			description -> Pequeña descripción sobre el estudiante

			valor de retorno:
			-----------------

			respuesta -> Contiene la respuesta, ya procesada, de la API-REST.
		"""

		try:

			datos = { 
						'nombre'		:	name, 
						'apellido'		: 	last_name, 
						'clase'			: 	classroom, 
						'edad'			: 	age, 
						'descripcion'	: 	description 
					}

			link = 'http://localhost/mis_archivos/API_REST_LARAVEL_PYTHON/API_REST/public/api/student'

			r = requests.post( link, data = datos )

			respuesta = 'Respuesta del Servidor: {estado:30s}\n'.format( estado = r.json()['estado'] )
			
			return respuesta

		except:
			return 'Ha ocurrido un error con el servidor!'

	@staticmethod
	def mostrar_estudiante(id):
		"""
			Método utilizado para mostrar a un estudiante por medio de su id

			parámetros: 
			----------

			id 	->	Es el parámetro utilizado para identificar a un estudiante en la base de datos

			valor de retorno:
			-----------------

			respuesta -> Contiene la respuesta, ya procesada, de la API-REST.
		"""

		try:

			link = 'http://localhost/mis_archivos/API_REST_LARAVEL_PYTHON/API_REST/public/api/student/'
			link += str(id)

			r = requests.get( link )

			respuesta		= 	'id : {id:3d}\t'
			respuesta		+= 	'created_at : {created_at:12s}\t'
			respuesta 		+=	'updated_at : {updated_at:12s}\t' 
			respuesta 		+= 	'nombre : {nombre:30s}\t'
			respuesta 		+= 	'apellido : {apellido:30s}\t'
			respuesta 		+=	'clase : {clase:12s}\t'
			respuesta 		+= 	'edad: {edad:3d}\n'

			return respuesta.format( 
									id				= r.json()['id'],
									created_at		= r.json()['created_at'],
									updated_at		= r.json()['updated_at'],
									nombre			= r.json()['nombre'],
									apellido		= r.json()['apellido'],
									clase 			= r.json()['clase'],
									edad 			= r.json()['edad']
								)

		except:

			return 'Ha ocurrido un error con el servidor!'

	@staticmethod
	def actualizar_estudiante(	id = 0, name = '', last_name = '', 
								classroom = '', age = 0, description = ''):
		"""
			Método utilizado para actualizar los datos de un estudiante

			parámetros: 
			----------
			
			id 			->	Es el parámetro utilizado para identificar a un estudiante en la base de datos
			name 		-> nombre del estudiante
			last_name 	-> apellido del estudiante
			classroom 	-> clase del estudiante
			age 		-> edad del estudiante
			description -> Pequeña descripción sobre el estudiante

			valor de retorno:
			-----------------

			respuesta -> Contiene la respuesta, ya procesada, de la API-REST.
		"""

		try:

			link = 'http://localhost/mis_archivos/API_REST_LARAVEL_PYTHON/API_REST/public/api/student/'
			link += str(id)

			datos = {

				'nombre'		:	name,
				'apellido'		:	last_name,
				'clase'			: 	classroom,
				'edad'			: 	age,
				'descripcion'	:	description 

			}

			r = requests.put(link, data=datos)

			respuesta = 'Respuesta del Servidor: {estado:30s}\n'.format( estado = r.json()['estado'] )	

			return respuesta	

		except:

			return 'Ha ocurrido un error con el servidor!'

	@staticmethod
	def eliminar_estudiante(id):

		"""
			Método utilizado para eliminar a un estudiante

			parámetros: 
			----------
			
			id -> Es el parámetro utilizado para identificar a un estudiante en la base de datos

			valor de retorno:
			-----------------

			respuesta -> Contiene la respuesta, ya procesada, de la API-REST.
		"""

		try:

			link = 'http://localhost/mis_archivos/API_REST_LARAVEL_PYTHON/API_REST/public/api/student/'
			link += str(id)

			r = requests.delete( link )

			respuesta = 'Respuesta del Servidor: {estado:30s}\n'.format( estado = r.json()['estado'] )

			return respuesta

		except:
			return 'Ha ocurrido un error con el servidor!'



if __name__ == '__main__':


	print Estudiante.eliminar_estudiante(57)

	print Estudiante.leer_lista_estudiantes()