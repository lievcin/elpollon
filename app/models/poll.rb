class Poll < ActiveRecord::Base
  attr_accessible :name, :cup_id, :group_key, :admin_id
  
	has_and_belongs_to_many :users
	belongs_to :cup
	has_many :bets
	has_many :games, :through => :cup	

	validates :name, :presence => true, :length	=> { :within => 6..30}, :uniqueness => true
  validates :group_key, :presence => true, :confirmation => true, :length => { :within => 6..20}
	validates :admin_id, :presence => true
	validates :cup_id, :presence => true	
	validates_numericality_of :admin_id, :only_integer => true

end
