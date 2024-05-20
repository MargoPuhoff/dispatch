class CreateDispatchers < ActiveRecord::Migration[7.1]
  def change
    create_table :dispatchers do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :password

      t.timestamps
    end
  end
end
