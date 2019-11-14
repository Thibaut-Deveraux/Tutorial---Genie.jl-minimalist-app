module MessagesApp

using Logging, LoggingExtras

function main()
  Base.eval(Main, :(const UserApp = MessagesApp))

  include(joinpath("..", "genie.jl"))

  Base.eval(Main, :(const Genie = MessagesApp.Genie))
  Base.eval(Main, :(using Genie))
end; main()

end
