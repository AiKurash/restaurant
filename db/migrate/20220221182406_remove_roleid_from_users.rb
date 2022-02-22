class RemoveRoleidFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :roleid, default: 1
  end
end
