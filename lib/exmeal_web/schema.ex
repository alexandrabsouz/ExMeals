defmodule ExmealWeb.Schema do
    use Absinthe.Schema

    query do
        import_fields :root_query
    end
end