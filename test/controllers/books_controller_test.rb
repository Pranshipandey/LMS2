require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get books_url
    assert_response :success
  end

  test "should get new" do
    get new_book_url
    assert_response :success
  end

  test "should create book" do
    assert_difference("Book.count") do
      post books_url, params: { book: { author: @book.author, book_count: @book.book_count, created_at: @book.created_at, edition: @book.edition, is_issued: @book.is_issued, isbn: @book.isbn, language: @book.language, number_hold_req: @book.number_hold_req, published: @book.published, subject: @book.subject, title: @book.title, updated_at: @book.updated_at } }
    end

    assert_redirected_to book_url(Book.last)
  end

  test "should show book" do
    get book_url(@book)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_url(@book)
    assert_response :success
  end

  test "should update book" do
    patch book_url(@book), params: { book: { author: @book.author, book_count: @book.book_count, created_at: @book.created_at, edition: @book.edition, is_issued: @book.is_issued, isbn: @book.isbn, language: @book.language, number_hold_req: @book.number_hold_req, published: @book.published, subject: @book.subject, title: @book.title, updated_at: @book.updated_at } }
    assert_redirected_to book_url(@book)
  end

  test "should destroy book" do
    assert_difference("Book.count", -1) do
      delete book_url(@book)
    end

    assert_redirected_to books_url
  end
end
