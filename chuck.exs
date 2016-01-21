# Helper script for iex testing
# $ iex -S mix
# iex(1)> import_file "chuck.exs"

import Supervisor.Spec
tree = [worker(Ecto.Ldap.TestRepo, [])]
opts = [name: Ecto.Ldap.Sup, strategy: :one_for_one]
Supervisor.start_link(tree, opts)

require Ecto.Query

alias Ecto.Ldap.Adapter
alias Ecto.Ldap.TestRepo
alias Ecto.Ldap.TestUser
alias Ecto.Query
