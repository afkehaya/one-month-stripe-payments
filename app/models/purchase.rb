# == Schema Information
#
# Table name: purchases
#
#  id          :integer          not null, primary key
#  email       :string(255)
#  amount      :integer
#  description :string(255)
#  currency    :string(255)
#  customer_id :string(255)
#  card        :string(255)
#  product_id  :integer
#  created_at  :datetime
#  updated_at  :datetime
#  uuid        :string(255)
#

class Purchase < ActiveRecord::Base
	after_create :email_purchaser

	def to_param
		uuid
	end

	private

	def email_purchaser
		PurchaseMailer.purchase_receipt(self).deliver
	end 


end
