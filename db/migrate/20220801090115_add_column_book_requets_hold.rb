class AddColumnBookRequetsHold < ActiveRecord::Migration[7.0]
  def change
      add_column :book_requests, :hold, :boolean

  end
end
