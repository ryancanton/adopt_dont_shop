class Application < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zipcode, presence: true, numericality: true
  # validates :description, presence: true
  validates :status, presence: true
  
  has_many :pet_applications
  has_many :pets, through: :pet_applications

  def get_pets
    self.pets
  end
end