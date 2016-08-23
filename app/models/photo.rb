class Photo < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_attached_file :avatar, :styles => {:large => '500*500!'} 
  validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
