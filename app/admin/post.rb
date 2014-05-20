ActiveAdmin.register Post do
  permit_params :title, :content

  index do
    selectable_column
    id_column
    column :title
    column :content
    column :slug_url
    column :created_at
 
    actions
  end

  filter :created_at

  form do |f|
    f.inputs "Post Details" do
      f.input :title
      f.input :content
      f.input :post_category_id, :as=> :select, :collection => PostCategory.all 
    end
    f.actions
  end

    controller do
        defaults :finder => :find_by_slug_url
    end
end
