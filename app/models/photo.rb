class Photo < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :categories
  has_attached_file :avatar, :styles => {:thumb => '200x200!', :large => '300*300!'} 
  validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
