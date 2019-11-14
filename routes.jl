using Genie.Router
using MessagesController

route("/") do
  serve_static_file("welcome.html")
end


# Route of the HTML view
route("/mymessages", MessagesController.mymessages)

# Route of the Json API view
route("/api/v1/mymessages", MessagesController.API.mymessages)
