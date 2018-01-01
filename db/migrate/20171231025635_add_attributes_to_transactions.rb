class AddAttributesToTransactions < ActiveRecord::Migration[5.0]
  def change
    add_column :transactions, :type, :string
    add_column :transactions, :amount, :decimal, :precision => 8, :scale => 2
    add_reference :transactions, :user, foreign_key: true
    add_reference :transactions, :server, foreign_key: true
  end
end
