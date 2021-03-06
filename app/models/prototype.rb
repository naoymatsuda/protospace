class Prototype < ActiveRecord::Base
  has_many :images, dependent: :destroy
  has_one :main_image, -> { where(status: 0) }, class_name: 'Image'
  belongs_to :user
  accepts_nested_attributes_for :images, reject_if: :reject_image
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  acts_as_taggable

  def reject_image(attributed)
    attributed['image'].blank?
  end

end
