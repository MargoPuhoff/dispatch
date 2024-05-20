# == Schema Information
#
# Table name: dispatchers
#
#  id              :bigint           not null, primary key
#  name            :string
#  email           :string
#  phone           :string
#  password        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#
class Dispatcher < ApplicationRecord
  has_many :treks
  has_secure_password
end
