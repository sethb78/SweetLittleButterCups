class AddOrderToCarousel < ActiveRecord::Migration
  def change
    add_column :carousels, :priority, :integer
  end
end
