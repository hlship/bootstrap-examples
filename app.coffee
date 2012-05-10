express = require "express"

app = module.exports = express.createServer()

app.configure "development", ->
  app.use express.logger "dev"
  app.use express.errorHandler  dumpExceptions: true, showStack:true

app.configure ->
  app.set "views", "#{__dirname}/views"
  app.set "view engine", "jade"
  app.set "view options", layout:false
  app.use express.bodyParser()
  app.use express.methodOverride()
  app.use app.router
  app.use require("connect-assets")()
  app.use express.static "#{__dirname}/public"
  express.errorHandler.title = "Twitter Bootstrap Examples"

app.configure "production", ->
  app.use express.errorHandler()

# Let the routes configure the app:

require("./routes")(app)

app.listen process.env.PORT || 3000

console.log "Express server listening on port %d in %s mode",
  app.address().port, app.settings.env
