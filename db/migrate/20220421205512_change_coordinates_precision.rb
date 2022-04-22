class ChangeCoordinatesPrecision < ActiveRecord::Migration[7.0]
  def change
    change_column :sites, :lat, :decimal, { precision: 10, scale: 6}
    change_column :sites, :long, :decimal, { precision: 10, scale: 6}
  end
end
