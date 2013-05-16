class Article < ActiveRecord::Base
  attr_accessible :content, :image_url, :title, :short_content

  def self.search(search)
    if search
      where('content LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
end
