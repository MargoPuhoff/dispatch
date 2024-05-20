# == Schema Information
#
# Table name: treks
#
#  id            :bigint           not null, primary key
#  address       :string
#  store         :string
#  trek_date     :date
#  auto_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  dispatcher_id :bigint
#  completed     :boolean          default(FALSE)
#
require 'test_helper'

class TrekTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
