class BookCopy < ApplicationRecord
  belongs_to :shop, optional: true
  belongs_to :book
end
