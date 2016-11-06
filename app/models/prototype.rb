class Prototype < ActiveRecord::Base
  has_many :images
  accepts_nested_attributes_for :images, reject_if: :reject_image

  def reject_image(attributed)
    attributed['image'].blank?
  end

end
