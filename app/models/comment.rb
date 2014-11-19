class Comment < ActiveRecord::Base
	validates :name,:comment,presence: :true
	
end
