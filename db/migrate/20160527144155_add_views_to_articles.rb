class AddViewsToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :views, :integer, after: :body
  end
end
