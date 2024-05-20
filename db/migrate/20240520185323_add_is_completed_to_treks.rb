class AddIsCompletedToTreks < ActiveRecord::Migration[7.1]
  def change
    add_column :treks, :completed, :boolean, default: false
  end
end
