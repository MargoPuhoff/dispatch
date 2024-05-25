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
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :registerable,
         :recoverable,
         :confirmable, 
         # :rememberable, 
         :validatable
         
  has_many :treks
end
