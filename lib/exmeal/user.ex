defmodule Exmeal.User do
  use Ecto.Schema

  import Ecto.Changeset

  alias Ecto.Changeset

  alias Exmeal.Meal

  @primary_key {:id, :binary_id, autogenerate: true}

  @required_params [:name, :email, :cpf]

  @derive {Jason.Encoder, only: [:id, :name, :email, :cpf]}

  schema "users" do
    field :name, :string
    field :email, :date
    field :cpf, :integer

    has_many :meals, Meal

    timestamps()
  end

  def changeset(struct \\ %__MODULE__{}, params) do
    struct
    |> cast(params, @required_params)
    |> validate_required(@required_params)
    |> validate_format(:email, ~r/@/)
    |> unique_constraint([:email])
    |> unique_constraint([:cpf])
    |> validate_length(:cpf, is: 11)
  end
end
