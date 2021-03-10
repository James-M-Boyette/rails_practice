class AddIssueNumberToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :issue_number, :string
  end
end
