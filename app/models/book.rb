class Book < ApplicationRecord
	belongs_to :publisher

	has_many :book_copies

	validates :title, presence: true 
	validates :title, uniqueness: true
	validates :title, length: {minimum: 2}

	before_destroy :ensure_not_referenced_by_any_book_copy

	private

     # ensure that there are no book copies referencing this book
     def ensure_not_referenced_by_any_book_copy
     	unless book_copies.empty?
     		errors.add(:base, 'Book Copies present')
     		throw :abort
     	end
     end
 end
