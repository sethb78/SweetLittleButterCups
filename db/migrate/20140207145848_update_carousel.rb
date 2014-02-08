class UpdateCarousel < ActiveRecord::Migration
  def change
    remove_column :carousels, :image_path
    add_column :carousels, :image, :string
  end
end
