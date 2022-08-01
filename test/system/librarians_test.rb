require "application_system_test_case"

class LibrariansTest < ApplicationSystemTestCase
  setup do
    @librarian = librarians(:one)
  end

  test "visiting the index" do
    visit librarians_url
    assert_selector "h1", text: "Librarians"
  end

  test "should create librarian" do
    visit librarians_url
    click_on "New librarian"

    check "Approved" if @librarian.approved
    fill_in "Created at", with: @librarian.created_at
    fill_in "Email", with: @librarian.email
    fill_in "Libraries", with: @librarian.libraries_id
    fill_in "Library", with: @librarian.library
    fill_in "Name", with: @librarian.name
    fill_in "Password", with: @librarian.password
    fill_in "Updated at", with: @librarian.updated_at
    fill_in "Users", with: @librarian.users_id
    click_on "Create Librarian"

    assert_text "Librarian was successfully created"
    click_on "Back"
  end

  test "should update Librarian" do
    visit librarian_url(@librarian)
    click_on "Edit this librarian", match: :first

    check "Approved" if @librarian.approved
    fill_in "Created at", with: @librarian.created_at
    fill_in "Email", with: @librarian.email
    fill_in "Libraries", with: @librarian.libraries_id
    fill_in "Library", with: @librarian.library
    fill_in "Name", with: @librarian.name
    fill_in "Password", with: @librarian.password
    fill_in "Updated at", with: @librarian.updated_at
    fill_in "Users", with: @librarian.users_id
    click_on "Update Librarian"

    assert_text "Librarian was successfully updated"
    click_on "Back"
  end

  test "should destroy Librarian" do
    visit librarian_url(@librarian)
    click_on "Destroy this librarian", match: :first

    assert_text "Librarian was successfully destroyed"
  end
end
