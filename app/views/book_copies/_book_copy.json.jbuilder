json.extract! book_copy, :id, :copies_in_stock, :books_sold_count, :shop_id, :book_id, :created_at, :updated_at
json.url book_copy_url(book_copy, format: :json)
