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
end
