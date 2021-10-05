defmodule Explorer.Repo.Migrations.AddMetadataToTokenTransfers do
  use Ecto.Migration

  def change do
    alter table(:token_transfers) do
      add(:metadata, :json)
    end
  end
end
