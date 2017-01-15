class AddPrivateToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :private, :boolean
  end
end
