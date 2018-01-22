var express = require('express')
var ejs = require('ejs')
var app = express()

app.use(express.static('public'))
app.set('view-engine','ejs')

app.get('/',function (req,res){
    res.render('main.ejs', {contractAddress: process.env.CONTRACT_ADDRESS || 'error'})
})
app.use('/api',require('./routes/api'))

app.listen(3030)

console.log("Serving on 3030")