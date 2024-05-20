class AddPasswordDigestToDrivers < ActiveRecord::Migration[7.1]
  def change
		add_column :drivers, :password_digest, :string
  end
end
