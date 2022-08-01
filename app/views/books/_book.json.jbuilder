json.extract! book, :id, :isbn, :title, :author, :language, :published, :edition, :subject, :created_at, :updated_at, :book_count, :is_issued, :number_hold_req, :created_at, :updated_at
json.url book_url(book, format: :json)
