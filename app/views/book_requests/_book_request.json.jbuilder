json.extract! book_request, :id, :date, :is_special, :is_approved, :books_id, :librarians_id, :students_id, :created_at, :updated_at
json.url book_request_url(book_request, format: :json)
