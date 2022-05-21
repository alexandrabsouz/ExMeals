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
end