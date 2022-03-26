defmodule ExmealWeb.MealsView do
  use ExmealWeb, :view
  alias Exmeal.Meal

  def render("create.json", %{meal: %Meal{} = meal}) do
    %{
        message: "Meal created!",
        meal: %{meal: %Meal{calories: meal.calories, date: meal.date, description: meal.description, id: meal.id}}
      }
  end

  def render("meal.json", %{meal: %Meal{} = meal}), do: %{meal: meal}
end
