ActiveAdmin.register Carousel do

  permit_params :priority, :title, :image, :bullet_point_1, :bullet_point_2,
                                   :bullet_point_3, :bullet_point_4

  index do
    column :priority
    column :title
    column :image
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :priority
      f.input :title
      f.input :image , label: "Upload Image"
      f.input :bullet_point_1
      f.input :bullet_point_2
      f.input :bullet_point_3
      f.input :bullet_point_4
    end
f.actions
  end


end
