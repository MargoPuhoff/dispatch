# == Schema Information
#
# Table name: autos
#
#  id         :bigint           not null, primary key
#  status     :integer          default("active")
#  driver_id  :integer
#  num        :string
#  mark       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Auto < ApplicationRecord
	belongs_to :driver

	enum status: {
    remont: 0,
    active: 1 
  }
end
