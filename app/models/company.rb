class Company < ActiveRecord::Base
  attr_accessible :description, :name, :image_path, :short_content
  has_many :types, :dependent => :destroy
  has_many :services, :through => :types

  def self.search(search)
    if search
      where('description LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
end