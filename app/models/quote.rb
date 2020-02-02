class Quote < ApplicationRecord
  belongs_to :page, dependent: :destroy
end
