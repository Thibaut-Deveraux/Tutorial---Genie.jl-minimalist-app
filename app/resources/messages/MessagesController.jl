module MessagesController

using Genie.Renderer, SearchLight, Messages


# This is the controller for the HTML view
function mymessages()
  html(:messages, :mymessages, messages = all(Message))
end



module API

using ..MessagesController
using Genie.Renderer
using SearchLight, Messages


# This is the controller for the Json API view
function mymessages()
  json(:messages, :mymessages, messages = all(Message))
end

end

end
