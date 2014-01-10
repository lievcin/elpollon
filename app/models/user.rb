class User < ActiveRecord::Base
  attr_accessible :name, :country
  has_and_belongs_to_many :polls
end
