class RenameAddressToZipcode < ActiveRecord::Migration
  def change
    rename_column :buildings, :address, :zipcode
  end
end
