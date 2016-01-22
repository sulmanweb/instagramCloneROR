class Post < ActiveRecord::Base

  belongs_to :user

  has_attached_file :image, styles: { medium: "300x300>" }, default_url: "https://s3-us-west-2.amazonaws.com/instagramcodelit/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
