class CertJoinCategory < ApplicationRecord
  belongs_to :certification
  belongs_to :cert_category
end
