class User < ActiveRecord::Base

  validates :mail, presence: true
  validates :password, presence: true
  validates :name, presence: true
  validates :member, presence: true
  validates :profile, presence: true
  validates :works, presence: true
  validates :avatar, presence: true

end
