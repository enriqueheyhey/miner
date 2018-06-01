class AddAttributesToAddresses2 < ActiveRecord::Migration[5.0]
  def change
    add_column :addresses, :status, :string
  end
end
