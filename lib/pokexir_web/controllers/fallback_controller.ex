defmodule PokexirWeb.FallbackController do
  use PokexirWeb, :controller

  def call(conn, {:error, result}) do
    conn
    |> put_status(:bad_request)
    |> put_view(PokexirWeb.ErrorView)
    |> render("400.json", result: result)
  end
end
