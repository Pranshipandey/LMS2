require "application_system_test_case"

class BooksTest < ApplicationSystemTestCase
  setup do
    @book = books(:one)
  end

  test "visiting the index" do
    visit books_url
    assert_selector "h1", text: "Books"
  end

  test "should create book" do
    visit books_url
    click_on "New book"

    fill_in "Author", with: @book.author
    fill_in "Book count", with: @book.book_count
    fill_in "Created at", with: @book.created_at
    fill_in "Edition", with: @book.edition
    check "Is issued" if @book.is_issued
    fill_in "Isbn", with: @book.isbn
    fill_in "Language", with: @book.language
    fill_in "Number hold req", with: @book.number_hold_req
    fill_in "Published", with: @book.published
    fill_in "Subject", with: @book.subject
    fill_in "Title", with: @book.title
    fill_in "Updated at", with: @book.updated_at
    click_on "Create Book"

    assert_text "Book was successfully created"
    click_on "Back"
  end

  test "should update Book" do
    visit book_url(@book)
    click_on "Edit this book", match: :first

    fill_in "Author", with: @book.author
    fill_in "Book count", with: @book.book_count
    fill_in "Created at", with: @book.created_at
    fill_in "Edition", with: @book.edition
    check "Is issued" if @book.is_issued
    fill_in "Isbn", with: @book.isbn
    fill_in "Language", with: @book.language
    fill_in "Number hold req", with: @book.number_hold_req
    fill_in "Published", with: @book.published
    fill_in "Subject", with: @book.subject
    fill_in "Title", with: @book.title
    fill_in "Updated at", with: @book.updated_at
    click_on "Update Book"

    assert_text "Book was successfully updated"
    click_on "Back"
  end

  test "should destroy Book" do
    visit book_url(@book)
    click_on "Destroy this book", match: :first

    assert_text "Book was successfully destroyed"
  end
end
