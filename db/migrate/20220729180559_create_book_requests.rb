class CreateBookRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :book_requests do |t|
      t.date :date
      t.boolean :is_special
      t.boolean :is_approved
      t.string :books_id
      t.integer :librarians_id
      t.string :students_id

  
    end
  end
end
