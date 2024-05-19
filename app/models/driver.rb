# == Schema Information
#
# Table name: drivers
#
#  id         :bigint           not null, primary key
#  name       :string
#  email      :string
#  phone      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Driver < ApplicationRecord
	has_many :autos

	def self.ransackable_attributes(auth_object = nil)
		["created_at", "email", "id", "id_value", "name", "phone", "updated_at"]
	end
end
