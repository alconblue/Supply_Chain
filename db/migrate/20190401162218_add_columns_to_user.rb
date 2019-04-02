class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :card_contents, :binary
  end
end
