require 'carrierwave/orm/activerecord'

class Picture < ActiveRecord::Base
  mount_uploader :asset, PictureUploader
  belongs_to :imageable, :polymorphic => true

  before_destroy :remember_id
  after_destroy :remove_id_directory

  protected

  def remember_id
    @id = id
  end

  def remove_id_directory
    FileUtils.remove_dir("#{Rails.root}/public/uploads/picture/asset/#{self.imageable_type}/#{@id}", :force => true)
  end

end
