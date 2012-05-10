# Exports a function that is passed the app, configures the app's routes

module.exports = (app) ->

  app.get "/",
    (req, res) ->
      res.render "ex1"

  app.get "/ex:id",
    (req, res) ->
      res.render "ex#{req.params.id}"
