class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.text :content
      t.integer :price
      t.datetime :start_date
      t.datetime :final_date
      t.references :client, references: :user , foreign_key: { to_table: :users }
      t.references :humorist, foreign_key: true
      t.timestamps
    end
  end
end
