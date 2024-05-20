class AddPasswordDigestToDispatchers < ActiveRecord::Migration[7.1]
  def change
    add_column :dispatchers, :password_digest, :string
  end
end
