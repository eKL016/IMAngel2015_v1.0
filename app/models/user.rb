class User < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  validates :photo, presence: true
  has_one :master, :foreign_key => "id"
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
