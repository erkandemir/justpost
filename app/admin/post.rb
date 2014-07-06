ActiveAdmin.register Post do
  permit_params :title, :content, :category_ids => []

  index do
    selectable_column
    id_column
    column :title
    column :category_id
    column :created_at
    
    actions
  end

  filter :created_at
  filter :title

  form do |f|
    f.inputs "Post Details" do
      f.input :title
      f.input :content
      f.input :categories, :as=> :check_boxes, :collection => Category.all
    end

    f.actions
  end

  controller do
      defaults :finder => :find_by_slug_url
  end

end
