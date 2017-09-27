class User < ApplicationRecord
  validates :name , presence: true
  validates :userId , presence: true
  valudates :password , presence: true

  has_many :orders 
end
