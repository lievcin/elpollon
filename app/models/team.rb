class Team < ActiveRecord::Base
  attr_accessible :name, :acronym, :country
  
	validates :name, 	:presence => true, :uniqueness => true
	validates :acronym,	:presence => true
	validates_length_of :acronym, :is => 3, :message => "Acronym has to be three characters"

	before_validation :uppercase_acronym

	def uppercase_acronym
		self.acronym.upcase!
	end

end
