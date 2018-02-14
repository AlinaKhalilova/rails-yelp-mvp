class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: { message: "Merci de remplir la case" }
end
