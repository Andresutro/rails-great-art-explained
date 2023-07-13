class CreateDonations < ActiveRecord::Migration[7.0]
  def change
    create_table :donations do |t|
      t.integer :amount
      t.text :message
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
