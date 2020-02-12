class Page < ApplicationRecord
  belongs_to :book, dependent: :destroy
  has_many :quotes
end
