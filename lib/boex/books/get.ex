defmodule Boex.Books.Get do
  alias Boex.{Repo, Book, Error}
  alias Ecto.UUID

  def call, do: {:ok, Repo.all(Book)}

  def by_id(id) do
    case UUID.cast(id) do
      :error -> {:error, Error.build(:bad_request, "Invalid id format")}
      {:ok, uuid} -> get_book_by_id(uuid)
    end
  end

  def by_title(title) do
    case Repo.get_by(Book, title: title) do
      nil -> {:error, Error.build(:not_found, "Book not found")}
      book -> {:ok, book}
    end
  end

  defp get_book_by_id(id) do
    case Repo.get(Book, id) do
      nil -> {:error, Error.build(:not_found, "Book not found")}
      book -> {:ok, book}
    end
  end
end
