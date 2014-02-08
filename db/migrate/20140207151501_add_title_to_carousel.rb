class AddTitleToCarousel < ActiveRecord::Migration
  def change
    add_column :carousels, :title, :string
  end
end
