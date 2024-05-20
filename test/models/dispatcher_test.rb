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
require 'test_helper'

class DispatcherTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
