class Article < ApplicationRecord
  has_rich_text :content
  validates :title, presence: true, length: { in: 5..70 }, uniqueness: true
  validates :subtitle, length: { in: 5..40 }, allow_blank: true
  validates_presence_of :content
end
