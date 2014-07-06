class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.string :slug_url
      t.timestamps
    end
  end
end
