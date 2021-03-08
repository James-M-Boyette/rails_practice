class CreateComicBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :comic_books do |t|
      t.string :publisher
      t.string :series_title
      t.integer :issue_number

      t.timestamps
    end
  end
end
