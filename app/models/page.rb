class Page < ApplicationRecord
  belongs_to :book, dependent: :destroy

  has_many :quotes

  def to_param
    "#{month}-#{day}"
  end

  def downcase_name
    self.name.downcase!
  end
end
