# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Exmeal.Repo.insert!(%Exmeal.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Exmeal.{Meal, User, Repo}

user1 = %{cpf: "31147677379", email: "berenice78@hotmail.com", name: "Amarelo Souza"}
user2 = %{cpf: "78711160101", email: "evert.klocko@gmail.com", name: "Azulino Souza"}
user3 = %{cpf: "56965545984", email: "lourdes_wintheiser18@yahoo.com", name: "Rosado Souza"}

meal1 = %{description: "Pizza de calabresa", calories: 373.3, category: :food}
meal2 = %{description: "Copo de refri de cola", calories: 80.0, category: :drink}
meal3 = %{description: "Fatia de torta de banana", calories: 250.55, category: :dessert}


#Inserting Users
%User{id: user1_id} = user1 |> User.changeset() |> Repo.insert!()
%User{id: user2_id} = user2 |> User.changeset() |> Repo.insert!()
%User{id: user3_id} = user3 |> User.changeset() |> Repo.insert!()

# inserting meals to user1
meals1 |> Map.put(:user_id, user1_id) |> Meal.changeset() |> Repo.insert!()
meals3 |> Map.put(:user_id, user1_id) |> Meal.changeset() |> Repo.insert!()

#inserting meals to user2
meals1 |> Map.put(:user_id, user2_id) |> Meal.changeset() |> Repo.insert!()
meals2 |> Map.put(:user_id, user2_id) |> Meal.changeset() |> Repo.insert!()
meals2 |> Map.put(:user_id, user2_id) |> Meal.changeset() |> Repo.insert!()

#inserting meals to user 3
meals2 |> Map.put(:user_id, user3_id) |> Meal.changeset() |> Repo.insert!()
meals2 |> Map.put(:user_id, user3_id) |> Meal.changeset() |> Repo.insert!()
meals3 |> Map.put(:user_id, user3_id) |> Meal.changeset() |> Repo.insert!()
meals3 |> Map.put(:user_id, user3_id) |> Meal.changeset() |> Repo.insert!()
