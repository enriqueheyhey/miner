class AddMoreattributesToWallet < ActiveRecord::Migration[5.0]
  def change
    add_column :wallets, :type, :string
    add_column :wallets, :address, :text
    add_reference :wallets, :user, foreign_key: true
  end
end
