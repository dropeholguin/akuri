class User < ApplicationRecord
  rolify
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :comments
  has_many :scores

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "default-avatar.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  def full_name
    [firts_name, last_name].join(' ')
  end
end
