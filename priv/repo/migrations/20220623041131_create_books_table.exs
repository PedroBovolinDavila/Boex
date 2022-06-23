defmodule Boex.Repo.Migrations.CreateBooksTable do
  use Ecto.Migration

  def change do
    create table(:books) do
      add :title, :string
      add :author, :string
      add :price, :float
      add :category, :string

      timestamps()
    end

    create unique_index(:books, [:title])
  end
end
