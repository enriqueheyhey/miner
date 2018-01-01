class RemoveMineridFromServers < ActiveRecord::Migration[5.0]
  def change
    remove_column :servers, :miner_id, :string
  end
end
