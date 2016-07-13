class SubProductColor < ActiveRecord::Base
  validates :color, presence: true
  # 色票
  mount_uploader :color_pic, PictureUploader
  # 主圖
  has_many :pictures, as: :imageable, class_name: "Picture", dependent: :destroy
  accepts_nested_attributes_for :pictures
  #產品明細
  has_many :sub_products, -> { where(:deleted_at => nil) }, dependent: :destroy
  accepts_nested_attributes_for :sub_products, allow_destroy: true

  belongs_to :product
end
