class Establishment < ApplicationRecord

  has_many :comments
  has_many :scores
end
