class AddCityToBuilding < ActiveRecord::Migration
  def change
      add_column :buildings, :city_id, :integer
  end
end
