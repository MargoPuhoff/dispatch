class CreateTreks < ActiveRecord::Migration[7.1]
  def change
    create_table :treks do |t|
      t.string :address
      t.string :store
      t.date :trek_date
      t.integer :auto_id

      t.timestamps
    end
  end
end
