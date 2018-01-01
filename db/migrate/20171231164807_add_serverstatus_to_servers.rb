class AddServerstatusToServers < ActiveRecord::Migration[5.0]
  def change
    add_column :servers, :serverstatus, :integer, :default=>0
  end
end
