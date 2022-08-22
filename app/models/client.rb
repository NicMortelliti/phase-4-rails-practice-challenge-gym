class Client < ApplicationRecord
  # validates :gym_id, uniqueness: true

  has_many :memberships
  has_many :gyms, through: :memberships
end
