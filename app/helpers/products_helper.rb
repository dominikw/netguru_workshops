module ProductsHelper
	def product_owner?(product)
		current_user && current_user == product.user
	end
end
