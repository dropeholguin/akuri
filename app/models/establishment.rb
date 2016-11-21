class Establishment < ApplicationRecord
	searchkick fields: [:name, :kind_of_food, :phone, :website]

  has_many :comments
  has_many :scores
  has_many :locations
  
  validates :name, :kind_of_food, :phone, :description, :image, presence: true
  validates :description, length: { maximum: 100 }
  has_attached_file :image, styles: { medium: "300x300#", thumb: "100x100#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
