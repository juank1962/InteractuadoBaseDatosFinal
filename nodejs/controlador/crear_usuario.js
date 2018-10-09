
const Router = require('express').Router(),
      Usuario = require('../modelo/usuario')


  //Metodo que busca y verifica la existencia de los Usuarios del sistema
  Router.get('/buscar_y_verificar_usuarios', function(req, res) {
    Usuario.find({}, (err, usuarios) => {
      if (err) {
        return res.status(500).send({message: 'Error al intentar obtener los usuarios. (status:500)'})
      }else{
        if (usuarios.length <= 0) {
			//Insertar un nuevo User1 de sistema 
			let nuevoUsuario1 = new Usuario()			
			nuevoUsuario1.nombre = 'User1'
			nuevoUsuario1.email = 'user1@prueba.com'
			nuevoUsuario1.clave = '123'
			nuevoUsuario1.save((err, usuario1) => {
			  	if (err) return res.status(500).send({message: 'Error al intentar insertar el usuario1. (status:500)'})
			})

			//Insertar un nuevo User2 de sistema 
			let nuevoUsuario2 = new Usuario()
			nuevoUsuario2.nombre = 'User2'
			nuevoUsuario2.email = 'user2@prueba.com'
			nuevoUsuario2.clave = '123'
			nuevoUsuario2.save((err, usuario2) => {
			  	if (err) return res.status(500).send({message: 'Error al intentar insertar el usuario2. (status:500)'})
			})	
					//Insertar un nuevo User3 de sistema 
			let nuevoUsuario3 = new Usuario()
			nuevoUsuario3.nombre = 'User3'
			nuevoUsuario3.email = 'user3@prueba.com'
			nuevoUsuario3.clave = '123'
			nuevoUsuario2.save((err, usuario3) => {
			  	if (err) return res.status(500).send({message: 'Error al intentar insertar el usuario3. (status:500)'})
			})	
        }else{
          return res.json(usuarios)
        } 
      } 
    })
  })


//Exportar el modulo
module.exports = Router

