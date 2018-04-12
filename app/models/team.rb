class Team < ApplicationRecord
  # Photo Uploads
  mount_uploader :photo, PhotoUploader
  
  has_many :people
  
  scope :alphabetical, -> {order(:name)}
  scope :waiting, -> {where(photo: nil)}
end
