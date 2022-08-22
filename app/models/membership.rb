class Membership < ApplicationRecord
  validates :gym_id, null: false
  validates :client_id, null: false
  validates :charge, null: false

  belongs_to :client
  belongs_to :gym
end
