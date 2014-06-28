class CreateCategorizes < ActiveRecord::Migration
  def change
    create_table :categorizes do |t|
      t.integer :post_id
      t.integer :post_category_id

      t.timestamps
    end
  end
end
