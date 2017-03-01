class Product < ActiveRecord::Base
	has_attached_file :image, :styles => { :normal => ['400x300#', :png] }
	  #This validates the type of file uploaded. According to this, only images are allowed.
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/


end
