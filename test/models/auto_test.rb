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
require "test_helper"

class AutoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
