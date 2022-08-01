require "application_system_test_case"

class LibrariesTest < ApplicationSystemTestCase
  setup do
    @library = libraries(:one)
  end

  test "visiting the index" do
    visit libraries_url
    assert_selector "h1", text: "Libraries"
  end

  test "should create library" do
    visit libraries_url
    click_on "New library"

    fill_in "Books", with: @library.books_id
    fill_in "Created at", with: @library.created_at
    fill_in "Fines", with: @library.fines
    fill_in "Location", with: @library.location
    fill_in "Max days", with: @library.max_days
    fill_in "Name", with: @library.name
    fill_in "University", with: @library.university
    fill_in "Updated at", with: @library.updated_at
    fill_in "Users", with: @library.users_id
    click_on "Create Library"

    assert_text "Library was successfully created"
    click_on "Back"
  end

  test "should update Library" do
    visit library_url(@library)
    click_on "Edit this library", match: :first

    fill_in "Books", with: @library.books_id
    fill_in "Created at", with: @library.created_at
    fill_in "Fines", with: @library.fines
    fill_in "Location", with: @library.location
    fill_in "Max days", with: @library.max_days
    fill_in "Name", with: @library.name
    fill_in "University", with: @library.university
    fill_in "Updated at", with: @library.updated_at
    fill_in "Users", with: @library.users_id
    click_on "Update Library"

    assert_text "Library was successfully updated"
    click_on "Back"
  end

  test "should destroy Library" do
    visit library_url(@library)
    click_on "Destroy this library", match: :first

    assert_text "Library was successfully destroyed"
  end
end
