class Micropost < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: Settings.micropost.maximum}
  validate :picture_size

  scope :feed, ->user{where(user_id: user.id). order created_at: :desc}
  mount_uploader :picture, PictureUploader

  private

  def picture_size
    errors.add :picture, t(".picture_size") if picture.size > Settings.picture_size.megabytes
  end
end
