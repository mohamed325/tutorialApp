class Customer < ApplicationRecord

	def approve
       update_attribute(:approved,    true)
       update_attribute(:approved_at, Time.zone.now)
    end
end
