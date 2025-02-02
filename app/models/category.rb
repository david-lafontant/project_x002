class Category < ApplicationRecord
    validates :category, presence: true, length: { in: 3..20 }, uniqueness: true
end
