class Book < ApplicationRecord
  has_many :pages

  before_save :downcase_title

  validates :title, presence: true

  def to_param
    title
  end

  def downcase_title
    self.title.downcase!
  end
end
