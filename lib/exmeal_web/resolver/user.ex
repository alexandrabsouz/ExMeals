defmodule ExmealWeb.Resolver.User do
    alias Exmeal.Users

    def get(%{id: user_id}, _context), do: Users.Get.by_id(user_id)
end