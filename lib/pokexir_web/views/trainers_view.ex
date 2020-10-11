defmodule PokexirWeb.TrainersView do
  use PokexirWeb, :view

  alias Pokexir.Trainer

  def render("create.json", %{trainer: %Trainer{id: id, name: name, inserted_at: inserted_at}}) do
    %{
      message: "Trainer created successfully",
      trainer: %{
        id: id,
        name: name,
        inserted_at: inserted_at
      }
    }
  end
end
