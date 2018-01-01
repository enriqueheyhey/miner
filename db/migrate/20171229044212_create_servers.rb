class CreateServers < ActiveRecord::Migration[5.0]
  def change
    create_table :servers do |t|
      t.string :name
      t.string :mining
      t.string :miner_id
      t.string :owner

      t.timestamps
    end
  end
end
