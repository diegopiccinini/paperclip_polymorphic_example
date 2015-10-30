class Album < ActiveRecord::Base
  has_one :image, :as => :viewable, :dependent => :destroy
  accepts_nested_attributes_for :image
  def image_styles
    {
      :cart => "50x50>",
      :large => "300x300>"
    }
  end

end
