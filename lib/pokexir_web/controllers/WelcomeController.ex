defmodule PokexirWeb.WelcomeController do
  use PokexirWeb, :controller

  def index(conn, __params) do
    text(conn, "Welcome to the Pokexir")
  end
end
