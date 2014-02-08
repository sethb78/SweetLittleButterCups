require 'spec_helper'
describe Carousel do

before do
    @carousel=Carousel.new
    @carousel.title = "Sampe Title"
    @carousel.bullet_point_1 = "sample info"
    @carousel.bullet_point_2 = "abc@gmail.com"
    @carousel.bullet_point_3 = "abc@gmail.com"
    @carousel.bullet_point_4 = "abc@gmail.com"
    @carousel.image = File.open(File.join(Rails.root, '/spec/fixtures/images/logo.png'))

  end
  
  subject { @carousel }

  it { should respond_to(:title) }
  it { should respond_to(:bullet_point_1) }
  it { should respond_to(:bullet_point_2) }
  it { should respond_to(:bullet_point_3) }
  it { should respond_to(:bullet_point_4) }
  it { should respond_to(:image) }
  it { should respond_to(:priority) }
  it { should be_valid }
end