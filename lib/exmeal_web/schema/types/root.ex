defmodule ExmealWeb.Schema.Types.Root do
  use Absinthe.Schema.Notation

  alias ExmealWeb.Resolver.User, as: UsersResolver

  import_types ExmealWeb.Schema.Types.User

  object :root_query do
    field :user, type: :user do
      arg :id, non_null(:id)

      resolve &UsersResolver.get/2
    end
  end

  object :root_mutation do
    @desc "create a new user"
    field :create_user, type: :user do
      arg :input, non_null(:create_user_input)

      resolve &UsersResolver.create/2
    end

    @desc "deletes user"
    field :delete_user, type: :user do
      arg :id, non_null(:delete_user)

      resolve &UsersResolver.delete/2
    end
  end
end
