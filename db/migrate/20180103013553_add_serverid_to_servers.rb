class AddServeridToServers < ActiveRecord::Migration[5.0]
  def change
    add_column :servers, :serverid, :text
  end
end
