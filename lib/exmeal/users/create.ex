defmodule Exmeal.Users.Create do
  alias Exmeal.{Repo, User}

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end
