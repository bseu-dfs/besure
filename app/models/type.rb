class Type < ActiveRecord::Base
  attr_accessible :company_id, :entity, :name
  has_many :services, :dependent => :destroy
  belongs_to :company
end