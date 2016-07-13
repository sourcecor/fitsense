class Banner < ActiveRecord::Base
  validates :caption, :link, presence: true
  mount_uploader :picture, PictureUploader

  has_many :sub_banners, -> { order(:seq) }, class_name: "Banner", foreign_key: "parent_id", dependent: :destroy
  accepts_nested_attributes_for :sub_banners, allow_destroy: true, :reject_if => lambda { |a| a[:caption].blank? }

  belongs_to :banner, class_name: "Banner"
end
