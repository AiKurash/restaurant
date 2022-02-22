class AddRoleidToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :roleid, :integer, default: 1
  end
end
