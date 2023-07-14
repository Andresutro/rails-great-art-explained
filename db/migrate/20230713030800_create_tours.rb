class CreateTours < ActiveRecord::Migration[7.0]
  def change
    create_table :tours do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.integer :capacity
      t.integer :mode
      t.string :address
      t.text :description
      t.string :title
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
