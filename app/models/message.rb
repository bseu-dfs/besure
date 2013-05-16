class Message < ActiveRecord::Base
  attr_accessible :content, :title, :user_id, :telephone, :name
  belongs_to :user

  validates_presence_of :content, :title, :telephone, :name
end
