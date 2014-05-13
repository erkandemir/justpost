ActiveAdmin.register PostCategory do
  permit_params :title

  index do
    selectable_column
    id_column
    column :title
    column :created_at
 
    actions
  end

  filter :created_at


  form do |f|
    f.inputs "PostCategory Details" do
      f.input :title
    end
    f.actions
  end

end
