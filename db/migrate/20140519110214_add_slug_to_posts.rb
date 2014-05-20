class AddSlugToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :slug_url, :string
  end
end
