class AddPasswordToDrivers < ActiveRecord::Migration[7.1]
  def change
		add_column :drivers, :password, :string
  end
end
