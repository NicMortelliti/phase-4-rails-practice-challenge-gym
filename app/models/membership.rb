class Membership < ApplicationRecord
  validates :gym_id, presence: true, uniqueness: true
  validates :client_id, presence: true
  validates :charge, presence: true

  belongs_to :client
  belongs_to :gym
end
