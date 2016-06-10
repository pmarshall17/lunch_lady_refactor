 require 'pry'

@wallet = 30
@entrees = { meat_loaf: 5, mystery_meat: 3, slop: 1}
@side_dishes = { carrots: 1.75, yogurt: 1.00, beef_Jerkey: 0.50 }
@final_menu = []
@fixuns = []

puts '****Welcome to the DPL Cafeteria!****'
puts 'You are included a gratis total of $30 on the house. Enjoy!'
puts 'please select your entree first!'

def checkout_menu
	puts "your total is #{@wallet}"
	puts 'Enjoy your meal!'
end



def confirmation
	puts '-' * 10 
	puts "Are all of the above items correct? 'yes' or 'no'"
	confirmation_response = gets.strip.downcase 
		if confirmation_response == 'yes'
			checkout_menu
		elsif confirmation_response == 'no'
			puts 'clearing your tab and restarting your order'
			@final_menu.clear
			puts entree
		else
			puts 'That is an invalid response. Please type yes or no'
		end		
end


def fixuns
	puts '-'*10
	puts 'Are you sure you want even more on that plate of yours!'
	puts "It\'s all free...i'm just sayin"
	puts '-'*10
	puts "here are your options:\n>ketchup\n>bbq sauce\n>bread\n>ranch dressing\n>tobasco"
	fixuns_response = gets.strip.downcase
	@fixuns<<fixuns_response
	print "Your basket has #{@final_menu}. The toppings you wish to include are:"
	@fixuns
end

def sides
	puts '-' * 10
	puts 'Please choose any choice of two!'
	puts "Your options are:\n>Carrots for $1.75\n>Yogurt for $1.00\n>Beef Jerkey for .50c"
	puts '-' * 10
	puts "enter as: 'your_choice and your_choice'"
	@side_choice = gets.strip.downcase
	@final_menu << @side_choice
		if @side_choice == 'carrots and yogurt' || @side_choice =='yogurt and carrots'
			print 'Your wallet now has $'
			puts @wallet - 2.75
		elsif @side_choice == 'carrots and beef jerkey' || @side_choice == 'beef Jerkey and carrots'
			print 'Your wallet now has $'
			puts @wallet - 2.25
		elsif @side_choice ==  'beef jerkey and yogurt' || @side_choice == 'yogurt and beef jerkey'
			print 'Your wallet now has $'
			puts @wallet - 1.50
		else
			puts 'that is an invalid selection. Please try again'
			sides
		end	
	puts '-' * 10	
	puts 'your menu items are:'
	puts @final_menu
	puts 'would you like some toppings?'
		answer = gets.strip.downcase
		if answer =='yes'
			puts fixuns
		elsif answer == 'no'
			puts confirmation
		else
		puts 'That is an invalid response. Pleas type yes or no'
		puts sides
	  end
end

def entree_selection
	if @entree_choice == 'meat loaf'
		puts 'You have selected Meat Loaf. You may now select two sides...'
		puts "you now have $#{@wallet - @entrees[:meat_loaf]}"
		puts sides
	elsif @entree_choice ==  'mystery meat'
		puts 'You have selected mystery meat. You may now select two sides...'
		puts "you now have $#{@wallet - @entrees[:mystery_meat]}"
		puts sides	
	elsif @entree_choice ==  'slop'
		puts 'You have selected slop. You may now select two sides...'
		puts "you now have $#{@wallet - @entrees[:slop]}"
		puts sides
	else
		puts 'Invalid selection. Please input one of the choices above'
		entree
	end
end

def entree
	puts "your options are:\n>Meat Loaf for $5\n>Mystery Meat for $3\n>Slop for $1"
	@entree_choice = gets.strip.downcase
	@final_menu << @entree_choice
	entree_selection
end

entree


