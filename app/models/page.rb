class Page < ApplicationRecord
  belongs_to :book
  has_many :quotes, dependent: :destroy
end
