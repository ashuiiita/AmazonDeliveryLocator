class Order < ApplicationRecord
  validates :name , presence: true
  validates :description
  validates :user_id , presence: true
  validates :delivery_centre_id , presence: true
  validates :deliveryDate , presence: true

  belongs_to :user
  belongs_to :delivery_centre
end
