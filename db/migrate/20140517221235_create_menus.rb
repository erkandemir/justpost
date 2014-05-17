class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :name
      t.integer :parent_id
      t.string :link
      t.integer :page_id

      t.timestamps
    end
  end
end
