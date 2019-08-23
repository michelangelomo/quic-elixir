defmodule QUIC do

  use Application
  import Supervisor.Spec, warn: false

  def start(_type, _args) do
    children = [
    {QUIC.Connection, [name: :connection]}
    ]

    opts = [strategy: :one_for_one, name: QUIC.Supervisor]
    Supervisor.start_link(children, opts)
  end
  @moduledoc """
  Documentation for QUIC.
  """

  @doc """
  A list of all supported QUIC versions.

  ## Examples

    iex> QUIC.supported_versions()
    [40]
  """
  @spec supported_versions() :: [40, ...]
  def supported_versions(), do: [40]

  ## Socket API
end
