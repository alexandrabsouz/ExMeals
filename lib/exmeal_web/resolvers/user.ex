defmodule ExmealWeb.Resolvers.User do
    alias Exmeal.Users

    def get(%{id: user_id}, _context), do: Users.Get.call(user_id)
end