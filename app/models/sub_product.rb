class SubProduct < ActiveRecord::Base
  validates :itemcode, :size, :color, :qty, presence: true

  belongs_to :sub_product_color
end
