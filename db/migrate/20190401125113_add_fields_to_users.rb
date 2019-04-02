class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :type, :integer
    add_column :users, :token, :string
    add_column :users, :card, :string
  end
end
