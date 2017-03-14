class Product < ActiveRecord::Base
 	serialize :tag , Array
	has_attached_file :image, styles: { thumb: '200x120#' }
	  #This validates the type of file uploaded. According to this, only images are allowed.
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
	validates_attachment :image, presence: true

	validates :price, numericality: true, presence: true
	validates :PID, numericality: { only_integer: true }, presence: true
	validates :description, presence: true
end
