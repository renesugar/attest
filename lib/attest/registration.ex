defmodule Attest.Registration do
  import Ecto.Changeset

  @doc """
  Registers an account.
  """
  def create_resource(changeset, repo \\ Attest.Config.repo) do
    changeset
    |> put_change(:crypted_password, hashed_password(changeset.params["password"]))
    |> change(%{verified: false})
    |> repo.insert()
  end

  defp hashed_password(password) do
    Comeonin.Bcrypt.hashpwsalt(password)
  end
end
