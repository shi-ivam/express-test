'use strict'
module.exports = function (app, opts) {
  // Setup routes, middleware, and handlers
  app.get('/', (req, res) => {
    res.locals.name = 'test'
    res.render('index')
  })
}
