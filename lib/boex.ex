defmodule Boex do
  alias Boex.Books.Create, as: CreateBook
  alias Boex.Books.Get, as: GetBook

  defdelegate create_book(params), to: CreateBook, as: :call
  defdelegate get_books(), to: GetBook, as: :call
  defdelegate get_book_by_id(id), to: GetBook, as: :by_id
  defdelegate get_book_by_title(title), to: GetBook, as: :by_title
end
