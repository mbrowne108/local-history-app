class CreateSites < ActiveRecord::Migration[7.0]
  def change
    create_table :sites do |t|
      t.string :name
      t.decimal :lat
      t.decimal :long
      t.text :description

      t.timestamps
    end
  end
end
