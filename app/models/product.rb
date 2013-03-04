class Product < ActiveRecord::Base
	belongs_to :category
  attr_accessible :name, :photo, :category_id
    has_attached_file :photo, :styles => { :medium => "500x500>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

end
