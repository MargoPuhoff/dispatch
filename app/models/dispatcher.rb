class Dispatcher < ApplicationRecord
	has_many :treks
  has_secure_password
end
