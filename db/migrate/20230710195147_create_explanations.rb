class CreateExplanations < ActiveRecord::Migration[7.0]
  def change
    create_table :explanations do |t|
      t.references :art, null: false, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
  