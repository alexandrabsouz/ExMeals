defmodule Exmeal.Meals.Get do
  alias Exmeal.{
    Error,
    Repo,
    Meal
  }

  def by_id(uuid) do
    case Repo.get(Meal, uuid) do
      nil -> {:error, Error.build_user_not_found_error()}
      meal -> {:ok, meal}
    end
  end
end
