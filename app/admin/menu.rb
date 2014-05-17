ActiveAdmin.register Menu do
  permit_params :name, :link, :parent_id, :page_id

  index do
    selectable_column
    id_column
    column :name
    column :link
    column :parent_id
    column :page_id
    column :created_at
 
    actions
  end

  filter :created_at


  form do |f|
    f.inputs "Page Details" do
      f.input :name
      f.input :link
      f.input :parent_id, :as => :select, :collection => Menu.all
      f.input :page_id, :as => :select, :collection => Page.all
    end
    f.actions
  end

end
