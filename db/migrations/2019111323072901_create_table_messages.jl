module CreateTableMessages

import SearchLight.Migrations: create_table, column, primary_key, add_index, drop_table

function up()
  create_table(:messages) do
    [
      primary_key()
      column(:content, :string)
    ]
  end

  add_index(:messages, :content)
end

function down()
  drop_table(:messages)
end

end
