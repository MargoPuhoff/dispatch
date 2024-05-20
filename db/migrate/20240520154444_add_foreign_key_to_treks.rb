class AddForeignKeyToTreks < ActiveRecord::Migration[7.1]
  def change
    add_reference :treks, :dispatcher, foreign_key: true
  end
end
