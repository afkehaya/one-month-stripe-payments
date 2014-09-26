# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  subtitle    :string(255)
#  author      :string(255)
#  description :text
#  sku         :string(255)
#  price       :decimal(, )
#  created_at  :datetime
#  updated_at  :datetime
#

class Product < ActiveRecord::Base
	
end
