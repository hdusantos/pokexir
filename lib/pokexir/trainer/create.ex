defmodule Pokexir.Trainer.Create do
  alias Pokexir.{Repo, Trainer}

  def call(params) do
    params
    |> Trainer.build()
    |> create_trainer()
  end

  defp create_trainer({:ok, struct_trainer}), do: Repo.insert(struct_trainer)
  defp create_trainer({:error, __changeset} = error), do: error
end
