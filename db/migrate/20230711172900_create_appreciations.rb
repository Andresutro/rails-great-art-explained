class CreateAppreciations < ActiveRecord::Migration[7.0]
  def change
    create_table :appreciations do |t|
      t.text :content
      t.references :user, null: false, foreign_key: true
      t.references :art, null: false, foreign_key: true

      t.timestamps
    end
  end
end
