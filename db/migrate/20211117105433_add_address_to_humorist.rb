class AddAddressToHumorist < ActiveRecord::Migration[6.0]
  def change
    add_column :humorists, :address, :string
  end
end
