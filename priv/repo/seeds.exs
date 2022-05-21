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

meals1 = %{description: "Batata Assada", date: "1999-02-20" , calories: 12}
meals2 = %{description: "Banana Frita", date: "1998-02-20" , calories: 5}
meals3 = %{description: "Mate-Cola", date: "1890-02-20" , calories: 10}


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
