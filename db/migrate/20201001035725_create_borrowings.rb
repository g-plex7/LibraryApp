class CreateBorrowings < ActiveRecord::Migration[6.0]
  def change
    create_table :borrowings do |t|
      t.boolean :borrow
      t.boolean :return

      t.timestamps
    end
  end
end
