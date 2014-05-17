ActiveAdmin.register Page do
  permit_params :title, :content

  index do
    selectable_column
    id_column
    column :title
    column :content
    column :created_at
 
    actions
  end

  filter :created_at


  form do |f|
    f.inputs "Page Details" do
      f.input :title
      f.input :content
    end
    f.actions
  end

end
