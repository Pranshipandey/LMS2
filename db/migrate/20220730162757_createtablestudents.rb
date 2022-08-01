class Createtablestudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :email
      t.string :name
      t.string :password
      t.string :education
      t.string :university
      t.integer :max_books
      t.datetime :created_at
      t.datetime :updated_at
      t.string :users_id

    
  end
end
end
