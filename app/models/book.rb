class Book < ApplicationRecord
  has_many :pages

  before_save :downcase_name

  validates :title, presence: true

  def to_param
    title
  end

  def downcase_name
    self.name.downcase!
  end

end
