class Photo < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :likes
  has_many :users_liked, through: :likes, source: :user

  has_many :categories
  has_attached_file :avatar, :styles => {:thumb => '200x200!', :large => '500*500!'}

  validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
