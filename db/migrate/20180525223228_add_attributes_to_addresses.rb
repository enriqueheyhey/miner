class AddAttributesToAddresses < ActiveRecord::Migration[5.0]
  def change
    add_column :addresses, :street, :string
    add_column :addresses, :city, :string
    add_column :addresses, :state, :string
    add_column :addresses, :neighborhood, :string
    add_column :addresses, :zip, :string
    add_column :addresses, :country, :string
    add_column :addresses, :photo_url, :text
    add_column :addresses, :description, :text
    add_column :addresses, :display_city, :text
    add_column :addresses, :display_state, :text
    add_column :addresses, :street_2, :string
  end
end
