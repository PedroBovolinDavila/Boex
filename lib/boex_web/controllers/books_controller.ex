defmodule BoexWeb.BooksController do
  use BoexWeb, :controller

  alias Boex.Book

  def create(conn, params) do
    with {:ok, %Book{} = book} <- Boex.create_book(params) do
      conn
      |> put_status(:created)
      |> render("create.json", book: book)
    end
  end

  def index(conn, _params) do
    with {:ok, books} <- Boex.get_books() do
      conn
      |> put_status(:ok)
      |> render("show.json", books: books)
    end
  end
end
