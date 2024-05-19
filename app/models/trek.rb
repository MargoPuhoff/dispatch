# == Schema Information
#
# Table name: treks
#
#  id         :bigint           not null, primary key
#  address    :string
#  store      :string
#  trek_date  :date
#  auto_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Trek < ApplicationRecord
end
