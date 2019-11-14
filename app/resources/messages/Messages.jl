module Messages

using SearchLight

export Message

mutable struct Message <: AbstractModel
  ### INTERNALS
  _table_name::String
  _id::String

  ### FIELDS
  id::DbId
  content::String

  ### constructor
  Message(;
    ### FIELDS
    id = DbId(),
    content = ""
  ) = new("messages", "id",                                                 ### INTERNALS
          id, content                                                       ### FIELDS
          )
end

# Pre-fill the database with default content
function seed()
  MyMessages = [
    "Hello World !",
    "Another message..."
  ]
  for m in MyMessages
    Message(content = m) |> SearchLight.save!
  end
end
 

end
