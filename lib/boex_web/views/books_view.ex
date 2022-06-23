defmodule BoexWeb.BooksView do
  use BoexWeb, :view

  alias Boex.Book

  def render("create.json", %{book: %Book{} = book}) do
    %{
      message: "Book created",
      book: book
    }
  end
end
