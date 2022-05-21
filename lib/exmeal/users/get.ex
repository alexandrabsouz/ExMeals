defmodule Exmeal.Users.Get do
  alias Exmeal.{Repo, User}

  def by_id(id) do
    case Repo.get(User, id) do
      nil -> {:error, "user not found"}
      user -> {:ok, Repo.preload(user, :meals)}
    end
  end
end
