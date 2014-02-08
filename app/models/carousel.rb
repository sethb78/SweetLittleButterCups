class Carousel < ActiveRecord::Base
    mount_uploader :image, ImageUploader
    before_save :update_priority

      validates :title, presence: true, length: { maximum: 25 }
    validates :image, presence: true
    validates :bullet_point_1, length: { maximum: 75 }
    validates :bullet_point_2, length: { maximum: 75 }
    validates :bullet_point_3, length: { maximum: 75 }
    validates :bullet_point_4, length: { maximum: 75 }

  def update_priority
    if self.priority.blank?
      lowest_priority = Carousel.order("priority DESC").first.priority
      if lowest_priority != nil
        self.priority = lowest_priority + 1
      else
        self.priority = 1
      end
    elsif Carousel.exists?(priority: self.priority)
      Carousel.where('priority >= ?', self.priority).reverse!.each do |x|
      Carousel.find(x).increment!(:priority)
      end
    else
      self.priority
    end

  end
end
