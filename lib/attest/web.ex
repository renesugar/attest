defmodule Attest.Web do
  def controller do
    quote do
      use Phoenix.Controller
      import Plug.Conn
    end
  end

  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
