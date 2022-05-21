defmodule Exmeal.Meal do
  use Ecto.Schema

  import Ecto.Changeset

  alias Ecto.Changeset
  alias Exmeal.User


  @required_params [:description, :date, :calories, :user_id]

  @derive {Jason.Encoder, only: [:id, :description, :date, :calories, :user_id]}

  schema "meals" do
    field :description, :string
    field :date, :date
    field :calories, :integer

    belongs_to :user, User

    timestamps()
  end

  def changeset(struct \\ %__MODULE__{}, params) do
    struct
    |> cast(params, @required_params)
    |> validate_required(@required_params)
    |> validate_length(:description, min: 3)
    |> foreign_key_constraint(:user_id)
  end
end
