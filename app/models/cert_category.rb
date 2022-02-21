class CertCategory < ApplicationRecord
  has_many :cert_join_categories
  has_many :certificates, through: :cert_join_categories
end
