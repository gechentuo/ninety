class User < ActiveRecord::Base
	has_attached_file :avatar, :styles => {:medium => '300*300', :thumb => '100*100'}
	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
