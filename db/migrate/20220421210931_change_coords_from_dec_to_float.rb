class ChangeCoordsFromDecToFloat < ActiveRecord::Migration[7.0]
  def change
    change_column :sites, :lat, :float, { precision: 10, scale: 6}
    change_column :sites, :long, :float, { precision: 10, scale: 6}
  end
end
