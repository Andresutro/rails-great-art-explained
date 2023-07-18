class AddStatusToDonations < ActiveRecord::Migration[7.0]
  def change
    add_column :donations, :status, :string, default: 'pending'
  end
end
