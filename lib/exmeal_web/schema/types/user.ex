defmodule ExmealWeb.Schema.Types.User do
  use Absinthe.Schema.Notation

  @desc "Logical user representation"
  object :user do
    field :id, non_null(:id), description: "User id, needs to be an integer"
    field :name, non_null(:string)
    field :email, non_null(:string)
    field :cpf, non_null(:string)
  end
end
