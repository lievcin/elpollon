class Poll < ActiveRecord::Base
  attr_accessible :name, :password, :admin_id
  
	has_and_belongs_to_many :users

	#validates :name, :presence => true, :length	=> { :within => 6..30}, :uniqueness => true
  #validates :password, :presence => true, :confirmation => true, :length => { :within => 6..20}
	#validates :admin_id, :presence => true
	
	#validates_numericality_of :admin_id, :only_integer => true

end
