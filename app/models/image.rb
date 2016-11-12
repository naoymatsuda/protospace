class Image < ActiveRecord::Base
  belongs_to :prototype
  mount_uploader :image
  enum status: { draft: 0, published: 1 }

end
