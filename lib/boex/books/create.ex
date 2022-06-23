defmodule Boex.Books.Create do
  alias Boex.{Book, Repo, Error}

  def call(params) do
    params
    |> Book.changeset()
    |> Repo.insert()
    |> handle_insert()
  end

  defp handle_insert({:error, result}), do: {:error, Error.build(:bad_request, result)}

  defp handle_insert({:ok, _user} = result), do: result
end
