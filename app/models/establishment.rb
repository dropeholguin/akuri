class Establishment < ApplicationRecord

  has_many :comments
  has_many :scores
  has_many :locations
  
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
