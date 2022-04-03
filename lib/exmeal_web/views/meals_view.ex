defmodule ExmealWeb.MealsView do
  use ExmealWeb, :view
  alias Exmeal.Meal

  def render("create.json", %{meal: %Meal{} = meal}) do
    %{
      meals: %{
        meal: %Meal{
          calories: meal.calories,
          date: meal.date,
          description: meal.description,
          id: meal.id,
          user_id: meal.user_id
        }
      },
      message: "Meal created!"
    }
  end

  def render("meal.json", %{meal: %Meal{} = meal}), do: %{meal: meal}
end
