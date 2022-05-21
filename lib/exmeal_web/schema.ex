defmodule ExmealWeb.Schema do
  use Absinthe.Schema

  import_types ExmealWeb.Schema.Types.Root

  query do
    import_fields :root_query
  end
end
