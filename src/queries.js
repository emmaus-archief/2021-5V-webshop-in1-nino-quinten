const Pool = require('pg').Pool

// development credential
let connectionString = {
  user: 'api',
  database: 'shop',
  password: 'apipass',
  host: 'localhost',
  port: 5432,
  ssl: false
};

if(process.env.GITPOD_WORKSPACE_ID === undefined) {
  connectionString = {
    connectionString: process.env.DATABASE_URL,
    ssl: {
        rejectUnauthorized: false
    }
  };
} 

const pool = new Pool(connectionString);
pool.on('connect', () => console.log('connected to db'));

const getsneakers = (request, response) => {
  const category_id = parseInt(request.query.category)
  var query = 'SELECT * FROM sneakers ORDER BY id ASC'
  var params = []
  if(category_id > 0){
    query = 'SELECT * FROM sneakers WHERE category_id = $1 ORDER BY id ASC'
    params = [ category_id]
  }
  pool.query(query, params, (error, results) => {
    if (error) {
      console.log(error)
      response.status(500).json("oops")
    } else {
      response.status(200).json(results.rows)
    }
  })
}

const getCategories = (_request, response) => {
  // TODO: change query to make it return categories
  pool.query('SELECT * FROM sneakers ORDER BY id ASC', (error, results) => {
    if (error) {
      console.log(error)
      response.status(500).json("oops")
    } else {
      response.status(200).json(results.rows)
    }
  })
}


const getsneakersByIds = (ids, callback) => {
  pool.query(
    'SELECT * FROM sneakers WHERE id = ANY($1::int[])',
    [ids],  // array of query arguments
    function(_err, result) {
      callback(result.rows)
    })
};

const getProductById = (request, response) => {
  const id = parseInt(request.params.id)
  pool.query('SELECT * FROM sneakers WHERE id = $1', [id], (error, results) => {
    if (error) {
      console.log(error)
      response.status(500).json("oops")
    } else {
      response.status(200).json(results.rows[0])
    }
  })
}

const getRelatedsneakersById = (request, response) => {
  const id = parseInt(request.params.id)
  // TODO: change query to return related sneakers
  // it now return an array with the current sneakers
  pool.query('SELECT * FROM sneakers WHERE id = $1', [id], (error, results) => {
    if (error) {
      console.log(error)
      response.status(500).json("oops")
    } else {
      response.status(200).json(results.rows)
    }
  })
}

const createProduct = (request, response) => {
  const { name, email } = request.body

  pool.query('INSERT INTO sneakers (name, email) VALUES ($1, $2)', [name, email], (error, _results) => {
    if (error) {
      console.log(error)
      response.status(500).json("oops")
    } else {
      response.status(201).json(`Product added with ID: ${result.insertId}`)
    }
  })
}

const updateProduct = (request, response) => {
  const id = parseInt(request.params.id)
  const { name, email } = request.body

  // Note: query is not correct
  pool.query(
    'UPDATE sneakers SET name = $1, email = $2 WHERE id = $3',
    [name, email, id],
    (error, _results) => {
      if (error) {
        console.log(error)
        response.status(500).json("oops")
      } else {
        response.status(200).send(`Product modified with ID: ${id}`)
      }
    }
  )
}

const deleteProduct = (request, response) => {
  const id = parseInt(request.params.id)

  pool.query('DELETE FROM sneakers WHERE id = $1', [id], (error, _results) => {
    if (error) {
      console.log(error)
      response.status(500).json("oops")
    } else {
      response.status(200).send(`Product deleted with ID: ${id}`)
    }
  })
}

module.exports = {
  getCategories,
  getsneakers,
  getProductById,
  createProduct,
  updateProduct,
  deleteProduct,
  getsneakersByIds,
  getRelatedsneakersById
}
