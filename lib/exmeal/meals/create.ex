defmodule Exmeal.Meals.Create do
    alias Exmeal.{
        Error,
        Repo,
        Meal
    }

    def call(params) do
        params
        |> Meal.changeset()
        |> Repo.insert()
        |> handle_result()
    end

    defp handle_result({:ok, %Meal{}} = result), do: result

    defp handle_result({:error, result}) do
        {:error, Error.build(:bad_request, result)}        
    end
end