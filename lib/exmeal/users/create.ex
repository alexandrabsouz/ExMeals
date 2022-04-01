defmodule Exmeal.Users.Create do
    
    alias Exmeal.{
        User,
        Error
    }

    alias Exmeal.Repo

    def call(params) do
        params
        |> User.changeset()
        |> Repo.insert()
        |> handle_result()
    end

    defp handle_result({:ok, %User{}} = result), do: result
    defp handle_result({:error, result}), do: {:error, Error.build(:bad_request, result)}
end