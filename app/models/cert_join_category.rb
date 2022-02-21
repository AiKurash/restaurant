class CertJoinCategory < ApplicationRecord
  belongs_to :certificate
  belongs_to :cert_category
end
