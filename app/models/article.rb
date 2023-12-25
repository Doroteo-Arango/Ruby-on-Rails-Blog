class Article < ApplicationRecord
  include Visible

  has_many :comments, dependent: :destroy

  # Adding validations to help us deal with invalid user input
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

end
