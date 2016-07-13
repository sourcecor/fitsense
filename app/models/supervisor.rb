class Supervisor < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable :registerable,
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :nickname, :email, :presence => true, :uniqueness => true

  has_and_belongs_to_many :groups
end
