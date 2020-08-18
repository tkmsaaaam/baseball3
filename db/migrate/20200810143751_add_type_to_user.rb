class AddTypeToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_type, :integer, default: 1, null: false
  end
end
