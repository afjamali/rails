class CreateBookCopies < ActiveRecord::Migration[5.1]
  def change
    create_table :book_copies do |t|
      t.integer :copies_in_stock
      t.integer :books_sold_count
      t.references :shop, foreign_key: true
      t.belongs_to :book, foreign_key: true

      t.timestamps
    end
  end
end
