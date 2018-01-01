class Wallet < ApplicationRecord
  belongs_to :user

  validates :address, :presence => true
  validates :user_id, :presence => true
end
