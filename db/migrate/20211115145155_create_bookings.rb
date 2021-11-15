class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.text :content
      t.integer :price
      t.datetime :start_date
      t.datetime :final_date
      t.references :clients, references: :users, foreign_key: { to_table: :users}
      t.references :humorists, foreign_key: true
      t.timestamps
    end
  end
end
