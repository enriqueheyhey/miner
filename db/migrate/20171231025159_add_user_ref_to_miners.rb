class AddUserRefToMiners < ActiveRecord::Migration[5.0]
  def change
    add_reference :servers, :user, foreign_key: true
    remove_column :servers, :owner, :string
  end
end
