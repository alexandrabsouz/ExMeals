defmodule ExmealWeb.Resolver.User do
  alias Exmeal.Users

  def get(%{id: user_id}, _context), do: Users.Get.by_id(user_id)
  def create(%{input: params}, _context), do: Users.Create.call(params)
  def delete(%{id: id}, _context), do: Users.Create.call(id)
end
