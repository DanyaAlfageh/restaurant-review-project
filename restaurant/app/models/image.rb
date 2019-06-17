class Image < ApplicationRecord
    belongs_to :user
    belongs_to :resturant
    has_one_attached :image

    validate :image_presence

    validate :image_type

  private


  def image_presence
    errors.add(:image, "can't be blank") unless image.attached?
  end

  def image_type
    if image.attached? == false
      errors.add(:image, "is missing!")
    end
    if !image.content_type.in?(%('image/jpeg image/png'))
      errors.add(:image, "needs to be a jpeg or png!")
    end
  end
  
end
