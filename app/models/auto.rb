# == Schema Information
#
# Table name: autos
#
#  id         :bigint           not null, primary key
#  status     :integer
#  driver_id  :integer
#  num        :string
#  mark       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Auto < ApplicationRecord
	belongs_to :driver
end
