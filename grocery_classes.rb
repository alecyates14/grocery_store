<<<<<<< HEAD

class Product

	attr_accessor :name, :quantity, :serial, :cost, :price, :sellBy, :category, :day, :month, :origPrice

	def initialized(name, quantity, serial, cost, price, sellBy, category, day, month)
		@name = ""
		@quantity = ""
		@serial = "" 
		@cost = "" 
		@price = ""
		@sellBy = ""
		@category = ""
		@day = ""
		@month = ""
		@origPrice = ""
	end


	def product(name, quantity, serial, cost, price, sellBy, category, day, month)
		@name = name
		@quantity = quantity
		@serial = serial 
		@cost = cost 
		@price = price
		@sellBy = sellBy
		@category = category
		@salePrice = (price)*(price*0.25)
		@origPrice = price
		@day = day
		@month = month
	end
=======

class Product

	attr_accessor :name, :quantity, :serial, :cost, :price, :sellBy, :category, :day, :month, :origPrice

	def initialized(name, quantity, serial, cost, price, sellBy, category, day, month)
		@name = ""
		@quantity = ""
		@serial = "" 
		@cost = "" 
		@price = ""
		@sellBy = ""
		@category = ""
		@day = ""
		@month = ""
		@origPrice = ""
	end


	def product(name, quantity, serial, cost, price, sellBy, category, day, month)
		@name = name
		@quantity = quantity
		@serial = serial 
		@cost = cost 
		@price = price
		@sellBy = sellBy
		@category = category
		@salePrice = (price)*(price*0.25)
		@origPrice = price
		@day = day
		@month = month
	end
>>>>>>> cdfa5d07a5dc1a5f35a810d29f9b8cec605e68be
end