class Micropost < ApplicationRecord
  belongs_to :user, optional: true
  validates :content,
            presence: true,
            length: { maximum: 140 }
  validates :user_id, presence: true

  has_one_attached :image
end
