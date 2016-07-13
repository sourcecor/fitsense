class HomeGrid < ActiveRecord::Base
  validates :caption, :link, presence: true
  mount_uploader :picture, PictureUploader

  has_many :sub_grids, class_name: "HomeGrid", foreign_key: "parent_id", dependent: :destroy
  accepts_nested_attributes_for :sub_grids, reject_if: :all_blank, allow_destroy: true
  belongs_to :p_grid, class_name: "HomeGrid"

  before_destroy :remember_id
  after_destroy :remove_id_directory

  protected

  def remember_id
    @id = id
  end

  def remove_id_directory
    FileUtils.remove_dir("#{Rails.root}/public/uploads/home_grid/#{@id}", :force => true)
  end
end
