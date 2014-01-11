class Cup < ActiveRecord::Base
  attr_accessible :name, :description

	has_many :rounds
	has_many :polls	
	has_many :games, :through => :rounds
	has_many :teams

	validates :name,	:presence => true, :uniqueness => true
	validates :description,	:presence => true
end
