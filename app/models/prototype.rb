class Prototype < ActiveRecord::Base
  has_many :images, dependent: :destroy
  has_one :main_image, -> { where(status: 0) }, class_name: 'Image'
  belongs_to :user
  accepts_nested_attributes_for :images, reject_if: :reject_image
  has_many :comments
  has_many :likes, dependent: :destroy

  def like_user(user_id)
   likes.find_by(user_id: user_id)
  end

  def reject_image(attributed)
    attributed['image'].blank?
  end

end
