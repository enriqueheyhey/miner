class RenameColumnInAddresses < ActiveRecord::Migration[5.0]
  def change
    rename_column :transactions, :addresses, :address_array
  end
end
