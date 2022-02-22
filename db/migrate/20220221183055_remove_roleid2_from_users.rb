class RemoveRoleid2FromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :role_id, null: false
  end
end
