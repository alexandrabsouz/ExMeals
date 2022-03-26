defmodule Exmeal.Meals.Update do
  alias Exmeal.{
    Error,
    Repo,
    Meal
  }

  def call(%{"id" => id} = params) do
    case Repo.get(Meal, id) do
      nil -> {:error, Error.build_user_not_found_error()}
      meal -> update_meal(meal, params)
    end
  end

  defp update_meal(meal, params) do
    meal
    |> Meal.changeset(params)
    |> Repo.update()
  end
end
