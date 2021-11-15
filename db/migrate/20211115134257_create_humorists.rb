class CreateHumorists < ActiveRecord::Migration[6.0]
  def change
    create_table :humorists do |t|
      t.string :name
      t.integer :size
      t.integer :weight
      t.string :gender
      t.integer :age
      t.string :humor_type
      t.string :public_target
      t.integer :price_per_hour
      t.references :owner, references: :user, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
