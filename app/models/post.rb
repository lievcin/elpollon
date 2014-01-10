class Post < ActiveRecord::Base
  attr_accessible :title, :category, :content, :user_id

	validates :title, 	:presence => true
	validates :category, 	:presence => true
	validates :content, 	:presence => true

	default_scope :order => 'created_at DESC'
  
end
