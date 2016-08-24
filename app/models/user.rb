class User < ActiveRecord::Base
  has_secure_password
  has_many :photos
  has_many :likes
  has_many :photos_liked, through: :likes, source: :photo

  def self.hasLiked(photo_id, user_id)
    if Like.find_by(user_id: user_id, photo_id: photo_id)
      return true
    else
      return false
    end
  end
end
