class CreateTags < ActiveRecord::Migration[6.1]
  def change
    create_table :tags do |t|
      t.string :title
      t.integer :tag_id

      t.timestamps
    end
  end
end
