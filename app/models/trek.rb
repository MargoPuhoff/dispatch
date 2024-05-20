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
class Trek < ApplicationRecord
  belongs_to :auto
	belongs_to :dispatcher
  has_many :drivers, :through => :auto

  def self.ransackable_attributes(auth_object = nil)
    ["address", "auto_id", "created_at", "id", "id_value", "store", "trek_date", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["auto"]
  end

	def status_str
		completed ? "Выполнена" : "Не выполнена"
	end
end
