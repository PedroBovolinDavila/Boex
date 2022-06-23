defmodule Boex.Book do
  use Ecto.Schema
  import Ecto.Changeset

  @required_params [:title, :author, :price, :category]

  @primary_key {:id, :binary_id, autogenerate: true}

  schema "books" do
    field :title, :string
    field :author, :string
    field :price, :float
    field :category, :string

    timestamps()
  end

  def changeset(struct \\ %__MODULE__{}, params) do
    struct
    |> cast(params, @required_params)
    |> validate_number(:price, greater_than: 0)
    |> unique_constraint([:title])
  end
end
