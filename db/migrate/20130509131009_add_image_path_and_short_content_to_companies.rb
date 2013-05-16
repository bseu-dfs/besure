class AddImagePathAndShortContentToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :image_path, :string
    add_column :companies, :short_content, :string
  end
end
