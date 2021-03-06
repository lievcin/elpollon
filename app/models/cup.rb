class Cup < ActiveRecord::Base
  attr_accessible :name, :description, :start_date, :end_date, :logo

	has_many :rounds
	has_many :polls	
	has_many :games, :through => :rounds
	has_many :teams

	validates :name,	:presence => true, :uniqueness => true
end
