class AddForeignKeyToSites < ActiveRecord::Migration[7.0]
  def change
    add_column :sites, :category_id, :bigint
    remove_column :categories, :site_id
  end
end
