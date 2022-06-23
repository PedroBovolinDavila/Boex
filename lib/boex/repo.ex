defmodule Boex.Repo do
  use Ecto.Repo,
    otp_app: :boex,
    adapter: Ecto.Adapters.Postgres
end
