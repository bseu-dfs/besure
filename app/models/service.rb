class Service < ActiveRecord::Base
  attr_accessible :company_id, :description, :name, :type_id
  scope :with_types, lambda {|type| joins(:type).where("types.name" => type)}
  belongs_to :type
  belongs_to :company
end