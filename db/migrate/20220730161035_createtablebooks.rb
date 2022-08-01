class Createtablebooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :isbn
      t.string :title
      t.string :author
      t.string :language
      t.date :published
      t.string :edition
      t.string :subject
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :book_count
      t.boolean :is_issued
      t.integer :number_hold_req


  end
end 
end

