class CreateAutos < ActiveRecord::Migration[7.1]
  def change
    create_table :autos do |t|
      t.integer :status, default: 1
      t.integer :driver_id
      t.string :num
      t.string :mark

      t.timestamps
    end
  end
end
