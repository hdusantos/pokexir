defmodule Pokexir.Repo do
  use Ecto.Repo,
    otp_app: :pokexir,
    adapter: Ecto.Adapters.Postgres
end
