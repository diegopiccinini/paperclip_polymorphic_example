class Image < ActiveRecord::Base
  belongs_to :viewable, :polymorphic => true
  has_attached_file :foto, :styles=>{:medium => "300x300>", :thumb => "100x100>"}
  validates_attachment_content_type :foto, :content_type => %w(image/jpeg image/jpg image/png)
end
