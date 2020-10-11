defmodule PokexirWeb.TrainersController do
  use PokexirWeb, :controller

  action_fallback PokexirWeb.FallbackController

  def create(conn, params) do
    params
    |> Pokexir.create_trainer()
    |> handle_response(conn)
  end

  defp handle_response({:ok, trainer}, conn) do
    conn
    |> put_status(:created)
    |> render("create.json", trainer: trainer)
  end

  defp handle_response({:error, __changeset} = error, __conn), do: error
end
