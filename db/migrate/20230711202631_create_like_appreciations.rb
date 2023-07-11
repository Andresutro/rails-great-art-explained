class CreateLikeAppreciations < ActiveRecord::Migration[7.0]
  def change
    create_table :like_appreciations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :appreciation, null: false, foreign_key: true

      t.timestamps
    end

    add_index :like_appreciations, [:user_id, :appreciation_id], unique: true
  end
end
