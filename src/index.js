const express = require('express')
const bodyParser = require('body-parser')
const app = express()
const db = require('./queries')
const port = process.env.PORT || 3000;
const checkout = require('./checkout.js')

app.use(bodyParser.json())
app.use(
  bodyParser.urlencoded({
    extended: true,
  })
)

app.get('/', (_request, response) => {
  response.redirect('index.html');
})

app.get('/api/categories', db.getCategories)
app.get('/api/sneakers', db.getsneakers)
app.get('/api/sneakers/:id', db.getProductById)
app.get('/api/sneakers/:id/related', db.getRelatedsneakersById)
// our API is not protected...so let's not expose these
// app.post('/api/sneakers', db.createProduct)
// app.put('/api/sneakers/:id', db.updateProduct)
// app.delete('/api/sneakers/:id', db.deleteProduct)
app.post('/api/checkout', checkout.checkoutOrder)

// serve static files
app.use(express.static('../public'))

app.listen(port, () => {
  console.log(`App running on port ${port}.`)
})


