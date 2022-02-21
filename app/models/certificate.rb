class Certificate < ApplicationRecord

  validates :title, presence: true

  has_many :cert_join_categories
  has_many :cert_categories, through: :cert_join_categories
end
