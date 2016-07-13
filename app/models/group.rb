class Group < ActiveRecord::Base
  validates :caption, presence: true

  has_and_belongs_to_many :menus
  has_and_belongs_to_many :supervisors
end
