class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :type
      t.belongs_to :site, null: false, foreign_key: true

      t.timestamps
    end
  end
end
