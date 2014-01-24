class Message
  include ActiveAttr::Model
  
  attribute :name
  attribute :email
  attribute :phone
  attribute :best_time
  attribute :content
  
  validates_presence_of :name

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX } 
  validates_length_of :content, :maximum => 500

  validates :phone, format: { with: /\d{3}-\d{3}-\d{4}/, message: "bad format" }
  validates :best_time, presence: true


end