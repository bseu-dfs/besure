class AddShortContentToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :short_content, :string
  end
end
