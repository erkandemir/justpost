ActiveAdmin.register Category do
  permit_params :title
  
  index do
    selectable_column
    id_column
    column :title
    column :created_at
    column :slug_url
 
    actions
  end

  filter :created_at


  form do |f|
    f.inputs "PostCategory Details" do
      f.input :title
    end
    f.actions
  end
  
    controller do
        defaults :finder => :find_by_slug_url
    end

end
