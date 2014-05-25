class AddSlugUrlToPostCategory < ActiveRecord::Migration
  def change
    add_column :post_categories, :slug_url, :string
  end
end
