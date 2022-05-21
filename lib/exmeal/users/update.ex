defmodule Exmeal.Users.Update do
  alias Exmeal.{Repo, User}

  def call(%{"id" => id} = params) do
    case Repo.get(User, id) do
      nil -> {:error, "user not found"}
      user -> update_user(user, params)
    end
  end

  defp update_user(user, params) do
    user
    |> User.changeset(params)
    |> Repo.update()
  end
end
