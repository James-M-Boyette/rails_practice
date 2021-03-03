class RemoveColumnFromTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :contacts, :string, :string
  end
end
