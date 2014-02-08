class CreateCarousels < ActiveRecord::Migration
  def change
    create_table :carousels do |t|
      t.string :image_path
      t.string :bullet_point_1
      t.string :bullet_point_2
      t.string :bullet_point_3
      t.string :bullet_point_4

      t.timestamps
    end
  end
end
