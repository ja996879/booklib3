class Book < ActiveRecord::Base
  belongs_to :user
  validates :name,length:{in: 1..30}, on: :create
  validates :name,length:{in: 1..30}, on: :update
  validates :ep , numericality: { greater_than: 0 }, on: :update
  validates :ep , numericality: { greater_than: 0 }, on: :create
end
