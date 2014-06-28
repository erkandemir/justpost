ActiveAdmin.register Post do
  permit_params :title, :post_category_ids => []


  index do
    selectable_column
    id_column
    column :title
    column :post_category_ids
    column :created_at
    
    actions
  end

  filter :created_at
  filter :title

  form do |f|
    f.inputs "Post Details" do
      f.input :title
      f.input :content,:input_html => { :class => "tinymce_editor" }
      f.input :post_categories, :as=> :check_boxes, :collection => PostCategory.all
    end

    f.actions
  end

  controller do
      defaults :finder => :find_by_slug_url
  end

end
