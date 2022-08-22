class Client < ApplicationRecord
  has_many :memberships
  has_many :gyms, through: :memberships

  def summary
    charges = 0
    memberships.each do |membership|
      charges += membership.charge
    end
    charges
  end
end
