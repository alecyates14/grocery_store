<<<<<<< HEAD
require_relative 'grocery_classes.rb'

# Produce
apple = Product.new
apple.product("apple", 250, "PD8374", 0.50, 1.00, "5/27/18", "produce", 27, 5)
orange = Product.new
orange.product("orange", 150, "PD8293", 0.75, 1.25, "5/29/18", "produce", 29, 5)
peach = Product.new
peach.product("peach", 75, "PD2938", 1.00, 2.00, "5/18/2018", "produce", 18, 5)
carrot = Product.new
carrot.product("carrot", 200, "PD9384", 0.75, 1.25, "5/30/18", "produce", 30, 5)
broccoli = Product.new
broccoli.product("broccoli", 215, "PD6384", 1.25, 2.50, "5/28/2018", "produce", 28, 5)

# Dairy
milk = Product.new
milk.product("milk", 300, "DA8273", 0.75, 1.50, "5/17/2018", "dairy", 17, 5)
cheese = Product.new
cheese.product("cheese", 250, "DA9283", 0.25, 0.50, "5/18/2018", "dairy", 18, 5)
butter = Product.new
butter.product("butter", 350, "DA2736", 0.45, 1.00, "5/19/2018", "dairy", 19, 5)
yogurt = Product.new
yogurt.product("yogurt", 150, "DA4756", 1.00, 2.00, "5/21/2018", "dairy", 21, 5)
gelato = Product.new
gelato.product("gelato", 50, "DA3728", 2.50, 5.00, "5/20/2018", "dairy", 20, 5)

# Meat
steak = Product.new
steak.product("steak", 35, "ME2837", 8.00, 16.00, "5/20/2018", "meat", 20, 5)
chicken = Product.new
chicken.product("chicken", 75, "ME0192", 4.00, 8.00, "5/19/2018", "meat", 19, 5)
bacon = Product.new
bacon.product("bacon", 125, "ME9948", 0.75, 1.50, "5/30/2018", "meat", 30, 5)
salmon = Product.new
salmon.product("salmon", 50, "ME0028", 5.00, 10.00, "5/29/2018", "meat", 29, 5)
shrimp = Product.new
shrimp.product("shrimp", 250, "ME6274", 0.25, 1.50, "5/27/2018", "meat", 27, 5)

@arr = Array.new


# Add Produce to Master List
@arr.push(apple)
@arr.push(orange)
@arr.push(peach)
@arr.push(carrot)
@arr.push(broccoli)

# Add Dairy to Master List
@arr.push(milk)
@arr.push(cheese)
@arr.push(butter)
@arr.push(yogurt)
@arr.push(gelato)

# Add Meat to Master List
@arr.push(steak)
@arr.push(chicken)
@arr.push(bacon)
@arr.push(salmon)
@arr.push(shrimp)

puts "Welcome to the Inventory"
def StartMenu()

	puts
	puts "========================"
	puts
	puts "Please Select an Option"
	puts
	puts "[1] View Products by Category"
	puts "[2] Add a Product"
	puts "[3] Put an Item on Sale"
	puts "[4] Remove Sale from an Item"
	puts "[5] View Cost per Bulk Purchase of Each Product"
	puts "[6] View Potential Revenue of Each Product"
	puts "[7] View Profit of Each Product"
	puts "[8] View Approaching Sell-By Dates"
	puts "[9] Exit"

	choice = gets.chomp

	if choice == "1" 

		puts
		puts "[Produce Products]"
		puts "========================================================================================================================"
		@arr.each do |x|
			if x.category == "produce"

				puts "Product: #{x.name} Quantity: #{x.quantity.to_s} Serial: #{x.serial} Cost: $#{x.cost.to_s} Price: $#{x.price.to_s} Sell By: #{x.sellBy} Category: #{x.category}"
			end
		end

		puts
		puts "[Dairy Products]"
		puts "========================================================================================================================"
		@arr.each do |x|
			if x.category == "dairy"

				puts "Product: #{x.name} Quantity: #{x.quantity.to_s} Serial: #{x.serial} Cost: $#{x.cost.to_s} Price: $#{x.price.to_s} Sell By: #{x.sellBy} Category: #{x.category}"
			end
		end

		puts
		puts "[Meat Products]"
		puts "========================================================================================================================"
		@arr.each do |x|
			if x.category == "meat"

				puts "Product: #{x.name} Quantity: #{x.quantity.to_s} Serial: #{x.serial} Cost: $#{x.cost.to_s} Price: $#{x.price.to_s} Sell By: #{x.sellBy} Category: #{x.category}"
			end
		end

		puts 
		puts "Press Enter to Return to Start Menu...."

		ans = gets.chomp

		if ans == ""
			StartMenu()
		else
			StartMenu()
		end



	elsif choice == "2"

		print "Enter Product Name: " 
		curName = gets.chomp.downcase
		print "Enter Quantity: " 
		curQuantity = gets.chomp.to_i
		print "Enter Serial: "
		curSerial = gets.chomp.upcase
		print "Enter Cost: " 
		curCost = gets.chomp.to_f
		print "Enter Price: " 
		curPrice = gets.chomp.to_f
		print "Enter Sell-By Day(Number Only): " 
		curSellByDay = gets.chomp.to_i
		print "Enter Sell-By Month(Number Only): "
		curSellByMonth = gets.chomp.to_i
		print "Enter Category: " 
		curCategory = gets.chomp.downcase
		curSellBy = curSellByMonth.to_s + "/" + curSellByDay.to_s + "/2018"

		newProd = Product.new
		newProd.product(curName,curQuantity,curSerial,curCost,curPrice,curSellBy,curCategory,curSellByDay,curSellByMonth)
		@arr.push(newProd)

		puts
		puts "====================="
		puts "New Prodcut Successfully Created!"
		puts 
		puts "Press Enter to Return to Start Menu...."
		ans = gets.chomp
		if ans == ""
			StartMenu()
		else
			StartMenu()
		end
		StartMenu()

	elsif choice == "3"

		puts
		print "Enter the Name of the Item You Would Like to Put on Sale: "
		item = gets.chomp.downcase

		@arr.each do |x|
			if x.name == item
				x.price = (x.price) - (x.price*0.25)
				puts "#{x.name.capitalize} has been put on a sale of 25 percent off. The new price of the item is: $#{x.price.to_s}"
			end
		end

		puts 
		puts "Press Enter to Return to Start Menu...."
		ans = gets.chomp
		if ans == ""
			StartMenu()
		else
			StartMenu()
		end

	elsif choice == "4"

		puts
		puts "Enter the Name of the Item You Would Like to Take Off of Sale"
		item = gets.chomp.downcase
		@arr.each do |x|
			if x.name == item
				x.price = x.origPrice
				puts "#{x.name.capitalize} has been taken off of sale. The new price of the item is: $#{x.price.to_s}"
				StartMenu()
			end
		end

	elsif choice == "5"

		puts
		puts "[Produce Products]"
		puts "========================================================================================================================"
		@arr.each do |x|
			if x.category == "produce"
				puts "Product: #{x.name} Cost per Order: $#{x.cost*x.quantity}"
			end
		end
		puts
		puts "[Dairy Products]"
		puts "========================================================================================================================"
		@arr.each do |x|
			if x.category == "dairy"
				puts "Product: #{x.name} Cost per Order: $#{x.cost*x.quantity}"
			end
		end
		puts
		puts "[Meat Products]"
		puts "========================================================================================================================"
		@arr.each do |x|
			if x.category == "meat"
				puts "Product: #{x.name} Cost per Order: $#{x.cost*x.quantity}"
			end
		end
		puts 
		puts "Press Enter to Return to Start Menu...."
		ans = gets.chomp
		if ans == ""
			StartMenu()
		else
			StartMenu()
		end

	elsif choice == "6"

		puts
		puts "[Produce Products]"
		puts "========================================================================================================================"
		@arr.each do |x|
			if x.category == "produce"
				puts "Product: #{x.name} Revenue per Order: $#{x.price*x.quantity}"
			end
		end
		puts
		puts "[Dairy Products]"
		puts "========================================================================================================================"
		@arr.each do |x|
			if x.category == "dairy"
				puts "Product: #{x.name} Revenue per Order: $#{x.price*x.quantity}"
			end
		end
		puts
		puts "[Meat Products]"
		puts "========================================================================================================================"
		@arr.each do |x|
			if x.category == "meat"
				puts "Product: #{x.name} Revenue per Order: $#{x.price*x.quantity}"
			end
		end
		puts 
		puts "Press Enter to Return to Start Menu...."
		ans = gets.chomp
		if ans == ""
			StartMenu()
		else
			StartMenu()
		end


	elsif choice == "7"

		puts
		puts "[Produce Products]"
		puts "========================================================================================================================"
		@arr.each do |x|
			if x.category == "produce"
				puts "Product: #{x.name} Profit per Order: $#{(x.price*x.quantity)-(x.cost*x.quantity)}"
			end
		end
		puts
		puts "[Dairy Products]"
		puts "========================================================================================================================"
		@arr.each do |x|
			if x.category == "dairy"
				puts "Product: #{x.name} Profit per Order: $#{(x.price*x.quantity)-(x.cost*x.quantity)}"
			end
		end
		puts
		puts "[Meat Products]"
		puts "========================================================================================================================"
		@arr.each do |x|
			if x.category == "meat"
				puts "Product: #{x.name} Profit per Order: $#{(x.price*x.quantity)-(x.cost*x.quantity)}"
			end
		end
		puts 
		puts "Press Enter to Return to Start Menu...."
		ans = gets.chomp
		if ans == ""
			StartMenu()
		else
			StartMenu()
		end

	elsif choice == "8"
		puts
		puts "Products With Sell-By Dates Within 1 Week"
		puts "========================================================================================================================"
		@arr.each do |x|
			if x.day <= 21 && x.month == 5 
				puts "Product: #{x.name} Category: #{x.category} Sell-By: #{x.sellBy}"
			end
		end
		puts 
		puts "Press Enter to Return to Start Menu...."
		ans = gets.chomp
		if ans == ""
			StartMenu()
		else
			StartMenu()
		end


	elsif choice == "9"

		exit

	else
		puts "Invalid Choice, Please Enter the Number of the Desired Option"
		StartMenu()
	end

end

StartMenu()











=======
require_relative 'grocery_classes.rb'

# Produce
apple = Product.new
apple.product("apple", 250, "PD8374", 0.50, 1.00, "5/27/18", "produce", 27, 5)
orange = Product.new
orange.product("orange", 150, "PD8293", 0.75, 1.25, "5/29/18", "produce", 29, 5)
peach = Product.new
peach.product("peach", 75, "PD2938", 1.00, 2.00, "5/18/2018", "produce", 18, 5)
carrot = Product.new
carrot.product("carrot", 200, "PD9384", 0.75, 1.25, "5/30/18", "produce", 30, 5)
broccoli = Product.new
broccoli.product("broccoli", 215, "PD6384", 1.25, 2.50, "5/28/2018", "produce", 28, 5)

# Dairy
milk = Product.new
milk.product("milk", 300, "DA8273", 0.75, 1.50, "5/17/2018", "dairy", 17, 5)
cheese = Product.new
cheese.product("cheese", 250, "DA9283", 0.25, 0.50, "5/18/2018", "dairy", 18, 5)
butter = Product.new
butter.product("butter", 350, "DA2736", 0.45, 1.00, "5/19/2018", "dairy", 19, 5)
yogurt = Product.new
yogurt.product("yogurt", 150, "DA4756", 1.00, 2.00, "5/21/2018", "dairy", 21, 5)
gelato = Product.new
gelato.product("gelato", 50, "DA3728", 2.50, 5.00, "5/20/2018", "dairy", 20, 5)

# Meat
steak = Product.new
steak.product("steak", 35, "ME2837", 8.00, 16.00, "5/20/2018", "meat", 20, 5)
chicken = Product.new
chicken.product("chicken", 75, "ME0192", 4.00, 8.00, "5/19/2018", "meat", 19, 5)
bacon = Product.new
bacon.product("bacon", 125, "ME9948", 0.75, 1.50, "5/30/2018", "meat", 30, 5)
salmon = Product.new
salmon.product("salmon", 50, "ME0028", 5.00, 10.00, "5/29/2018", "meat", 29, 5)
shrimp = Product.new
shrimp.product("shrimp", 250, "ME6274", 0.25, 1.50, "5/27/2018", "meat", 27, 5)

@arr = Array.new


# Add Produce to Master List
@arr.push(apple)
@arr.push(orange)
@arr.push(peach)
@arr.push(carrot)
@arr.push(broccoli)

# Add Dairy to Master List
@arr.push(milk)
@arr.push(cheese)
@arr.push(butter)
@arr.push(yogurt)
@arr.push(gelato)

# Add Meat to Master List
@arr.push(steak)
@arr.push(chicken)
@arr.push(bacon)
@arr.push(salmon)
@arr.push(shrimp)

puts "Welcome to the Inventory"
def StartMenu()

	puts
	puts "========================"
	puts
	puts "Please Select an Option"
	puts
	puts "[1] View Products by Category"
	puts "[2] Add a Product"
	puts "[3] Put an Item on Sale"
	puts "[4] Remove Sale from an Item"
	puts "[5] View Cost per Bulk Purchase of Each Product"
	puts "[6] View Potential Revenue of Each Product"
	puts "[7] View Profit of Each Product"
	puts "[8] View Approaching Sell-By Dates"
	puts "[9] Exit"

	choice = gets.chomp

	if choice == "1" 

		puts
		puts "[Produce Products]"
		puts "========================================================================================================================"
		@arr.each do |x|
			if x.category == "produce"

				puts "Product: #{x.name} Quantity: #{x.quantity.to_s} Serial: #{x.serial} Cost: $#{x.cost.to_s} Price: $#{x.price.to_s} Sell By: #{x.sellBy} Category: #{x.category}"
			end
		end

		puts
		puts "[Dairy Products]"
		puts "========================================================================================================================"
		@arr.each do |x|
			if x.category == "dairy"

				puts "Product: #{x.name} Quantity: #{x.quantity.to_s} Serial: #{x.serial} Cost: $#{x.cost.to_s} Price: $#{x.price.to_s} Sell By: #{x.sellBy} Category: #{x.category}"
			end
		end

		puts
		puts "[Meat Products]"
		puts "========================================================================================================================"
		@arr.each do |x|
			if x.category == "meat"

				puts "Product: #{x.name} Quantity: #{x.quantity.to_s} Serial: #{x.serial} Cost: $#{x.cost.to_s} Price: $#{x.price.to_s} Sell By: #{x.sellBy} Category: #{x.category}"
			end
		end

		puts 
		puts "Press Enter to Return to Start Menu...."

		ans = gets.chomp

		if ans == ""
			StartMenu()
		else
			StartMenu()
		end



	elsif choice == "2"

		print "Enter Product Name: " 
		curName = gets.chomp.downcase
		print "Enter Quantity: " 
		curQuantity = gets.chomp.to_i
		print "Enter Serial: "
		curSerial = gets.chomp.upcase
		print "Enter Cost: " 
		curCost = gets.chomp.to_f
		print "Enter Price: " 
		curPrice = gets.chomp.to_f
		print "Enter Sell-By Day(Number Only): " 
		curSellByDay = gets.chomp.to_i
		print "Enter Sell-By Month(Number Only): "
		curSellByMonth = gets.chomp.to_i
		print "Enter Category: " 
		curCategory = gets.chomp.downcase
		curSellBy = curSellByMonth.to_s + "/" + curSellByDay.to_s + "/2018"

		newProd = Product.new
		newProd.product(curName,curQuantity,curSerial,curCost,curPrice,curSellBy,curCategory,curSellByDay,curSellByMonth)
		@arr.push(newProd)

		puts
		puts "====================="
		puts "New Prodcut Successfully Created!"
		puts 
		puts "Press Enter to Return to Start Menu...."
		ans = gets.chomp
		if ans == ""
			StartMenu()
		else
			StartMenu()
		end
		StartMenu()

	elsif choice == "3"

		puts
		print "Enter the Name of the Item You Would Like to Put on Sale: "
		item = gets.chomp.downcase

		@arr.each do |x|
			if x.name == item
				x.price = (x.price) - (x.price*0.25)
				puts "#{x.name.capitalize} has been put on a sale of 25 percent off. The new price of the item is: $#{x.price.to_s}"
			end
		end

		puts 
		puts "Press Enter to Return to Start Menu...."
		ans = gets.chomp
		if ans == ""
			StartMenu()
		else
			StartMenu()
		end

	elsif choice == "4"

		puts
		puts "Enter the Name of the Item You Would Like to Take Off of Sale"
		item = gets.chomp.downcase
		@arr.each do |x|
			if x.name == item
				x.price = x.origPrice
				puts "#{x.name.capitalize} has been taken off of sale. The new price of the item is: $#{x.price.to_s}"
				StartMenu()
			end
		end

	elsif choice == "5"

		puts
		puts "[Produce Products]"
		puts "========================================================================================================================"
		@arr.each do |x|
			if x.category == "produce"
				puts "Product: #{x.name} Cost per Order: $#{x.cost*x.quantity}"
			end
		end
		puts
		puts "[Dairy Products]"
		puts "========================================================================================================================"
		@arr.each do |x|
			if x.category == "dairy"
				puts "Product: #{x.name} Cost per Order: $#{x.cost*x.quantity}"
			end
		end
		puts
		puts "[Meat Products]"
		puts "========================================================================================================================"
		@arr.each do |x|
			if x.category == "meat"
				puts "Product: #{x.name} Cost per Order: $#{x.cost*x.quantity}"
			end
		end
		puts 
		puts "Press Enter to Return to Start Menu...."
		ans = gets.chomp
		if ans == ""
			StartMenu()
		else
			StartMenu()
		end

	elsif choice == "6"

		puts
		puts "[Produce Products]"
		puts "========================================================================================================================"
		@arr.each do |x|
			if x.category == "produce"
				puts "Product: #{x.name} Revenue per Order: $#{x.price*x.quantity}"
			end
		end
		puts
		puts "[Dairy Products]"
		puts "========================================================================================================================"
		@arr.each do |x|
			if x.category == "dairy"
				puts "Product: #{x.name} Revenue per Order: $#{x.price*x.quantity}"
			end
		end
		puts
		puts "[Meat Products]"
		puts "========================================================================================================================"
		@arr.each do |x|
			if x.category == "meat"
				puts "Product: #{x.name} Revenue per Order: $#{x.price*x.quantity}"
			end
		end
		puts 
		puts "Press Enter to Return to Start Menu...."
		ans = gets.chomp
		if ans == ""
			StartMenu()
		else
			StartMenu()
		end


	elsif choice == "7"

		puts
		puts "[Produce Products]"
		puts "========================================================================================================================"
		@arr.each do |x|
			if x.category == "produce"
				puts "Product: #{x.name} Profit per Order: $#{(x.price*x.quantity)-(x.cost*x.quantity)}"
			end
		end
		puts
		puts "[Dairy Products]"
		puts "========================================================================================================================"
		@arr.each do |x|
			if x.category == "dairy"
				puts "Product: #{x.name} Profit per Order: $#{(x.price*x.quantity)-(x.cost*x.quantity)}"
			end
		end
		puts
		puts "[Meat Products]"
		puts "========================================================================================================================"
		@arr.each do |x|
			if x.category == "meat"
				puts "Product: #{x.name} Profit per Order: $#{(x.price*x.quantity)-(x.cost*x.quantity)}"
			end
		end
		puts 
		puts "Press Enter to Return to Start Menu...."
		ans = gets.chomp
		if ans == ""
			StartMenu()
		else
			StartMenu()
		end

	elsif choice == "8"
		puts
		puts "Products With Sell-By Dates Within 1 Week"
		puts "========================================================================================================================"
		@arr.each do |x|
			if x.day <= 21 && x.month == 5 
				puts "Product: #{x.name} Category: #{x.category} Sell-By: #{x.sellBy}"
			end
		end
		puts 
		puts "Press Enter to Return to Start Menu...."
		ans = gets.chomp
		if ans == ""
			StartMenu()
		else
			StartMenu()
		end


	elsif choice == "9"

		exit

	else
		puts "Invalid Choice, Please Enter the Number of the Desired Option"
		StartMenu()
	end

end

StartMenu()











>>>>>>> cdfa5d07a5dc1a5f35a810d29f9b8cec605e68be
