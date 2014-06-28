class RemovePostCategoryIdFromPost < ActiveRecord::Migration
  def change
    remove_column :posts, :postCategory_id, :integer
  end
end
