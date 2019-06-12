class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :profile_photo, ProfilePhotoUploader

   has_many :instrument_joins
   has_many :instruments, through: :instrument_joins
end
