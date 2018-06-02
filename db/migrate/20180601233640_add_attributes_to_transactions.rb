class AddAttributesToTransactions < ActiveRecord::Migration[5.0]
  def change
    add_reference :transactions, :user, foreign_key: true
    add_column :transactions, :addresses, :string
    add_column :transactions, :status, :string, default: 'draft'
  end
end
