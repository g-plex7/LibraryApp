class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.decimal :isbn
      t.string :author

      t.timestamps
    end
  end
end
