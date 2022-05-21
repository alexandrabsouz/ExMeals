# defmodule ExmealWeb.UsersView do
#   use ExmealWeb, :view

#   alias Exmeal.User

#   def render("create.json", %{user: %User{} = user}) do
#     %{
#       user: %{user: %User{cpf: user.cpf, name: user.name, email: user.email, id: user.id}},
#       message: "User created!"
#     }
#   end

#   def render("user.json", %{user: %User{} = user}), do: %{user: user}
# end
