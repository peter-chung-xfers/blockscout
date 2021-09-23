defmodule Indexer.Transform.Blocks.Quorum do
  @moduledoc """
  Handles block transforms for Quorum chain.
  """

  alias Indexer.Transform.Blocks

  @behaviour Blocks

  @impl Blocks
  def transform(%{number: 0} = block), do: block

  def transform(block) when is_map(block) do
    %{block | timestamp: trunc(block.timestamp / 1_000_000_000)}
  end
end
