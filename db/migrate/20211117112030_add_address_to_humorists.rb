class AddAddressToHumorists < ActiveRecord::Migration[6.0]
  def change
    add_column :humorists, :address, :string
    add_column :humorists, :longitude, :decimal
    add_column :humorists, :latitude, :decimal
  end
end
