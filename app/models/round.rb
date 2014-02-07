class Round < ActiveRecord::Base
  attr_accessible :name, :leg, :cup_id, :description, :round_type

	has_many :games
	belongs_to :cup
	#has_many :teams, :through => :games

	validates :name,	:presence => true
	validates_uniqueness_of		:name, :scope => :cup_id
	validates :leg,		:presence => true
	validates :cup_id,	:presence => true
	validates :round_type,	:presence => true

end
