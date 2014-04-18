$ = require("modmod")("express", "easyimap")

apiApp = $.express()
# CORS middleware
apiApp.all '/*', (req, res, next) ->
	res.header("Access-Control-Allow-Origin", "*");
	res.header("Access-Control-Allow-Headers", "X-Requested-With");
	next();

apiApp.get "/latest", (req,res) ->
	res.type "application/json"
	$.easyimap.getLatestInbox().then (data)->
		res.send data

apiApp.get "/trash", (req,res) ->
	res.type "application/json"
	$.easyimap.getTrash().then (data)->
		res.send data

apiApp.listen 8100
