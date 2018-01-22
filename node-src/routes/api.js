var router = require('express').Router()
var apiHandler = require('../core/apiHandler')

module.exports = router

router.get('/', function(req,res){
	res.json({
		success: true,
		message: "Server Up. TestRPC on tcp/9545"
	})
})

router.get('/contractaddress', apiHandler.contractAddress)