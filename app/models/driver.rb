# == Schema Information
#
# Table name: drivers
#
#  id              :bigint           not null, primary key
#  name            :string
#  email           :string
#  phone           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password        :string
#  password_digest :string
#
class Driver < ApplicationRecord
  has_many :autos

  def self.ransackable_attributes(_auth_object = nil)
    %w[created_at email id id_value name phone updated_at]
  end
end
