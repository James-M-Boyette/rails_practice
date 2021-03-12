class DeleteGraphicNovelfromCategories < ActiveRecord::Migration[6.1]
  def change
    remove_column :categories, :graphic_novel
  end
end
