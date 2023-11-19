class AddFieldsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :last_article, :integer
    add_column :users, :second_last_article, :integer
    add_column :users, :third_last_article, :integer
    add_column :articles, :summary, :string
  end
end
