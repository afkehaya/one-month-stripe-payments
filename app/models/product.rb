# == Schema Information
#
# Table name: products
#
#  id                 :integer          not null, primary key
#  title              :string(255)
#  subtitle           :string(255)
#  author             :string(255)
#  description        :text
#  sku                :string(255)
#  price              :decimal(, )
#  created_at         :datetime
#  updated_at         :datetime
#  length             :string(255)
#  author_description :text
#  author_image_name  :string(255)
#  details            :string(255)
#  download_url       :string(255)
#

 class Product < ActiveRecord::Base
 	def full_description
     "#{self.title} #{self.subtitle}"
  	end

 	def price_in_cents
     (self.price * 100).to_i
 	end

 	def thumbnail_image_name
 		"product-#{title.split.slice(0..-2).join(" ").gsub(" ", "-").downcase}.png"
 	end

 end
