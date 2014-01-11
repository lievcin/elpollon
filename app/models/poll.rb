class Poll < ActiveRecord::Base
  attr_accessible :name, :cup_id, :password, :admin_id
  
	has_and_belongs_to_many :users
	belongs_to :cup
	has_many :bets

	validates :name, :presence => true, :length	=> { :within => 6..30}, :uniqueness => true
  validates :password, :presence => true, :confirmation => true, :length => { :within => 6..20}
	validates :admin_id, :presence => true
	validates :cup_id, :presence => true	
	validates_numericality_of :admin_id, :only_integer => true

end
