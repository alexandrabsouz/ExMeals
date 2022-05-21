defmodule Exmeal.Users.Delete do
  alias Exmeal.{Repo, User}

  def call(id) do
    case Repo.get(User, id) do
      nil -> {:error, "user not found"}
      user -> {:ok, Repo.delete(user)}
    end
  end
end
