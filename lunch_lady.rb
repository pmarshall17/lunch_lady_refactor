require 'pry'

@wallet = [100]
@entrees = [{'Meat Loaf' => 5, 'Mystery Meat' => 3, 'Slop' => 1}]
@side_dishes = [{'Carrots' => 1.75, 'Yogurt' => 1.00, 'Beef Jerkey' => 0.50}]
@entree_choice_array = []
@side_dish_choice_array = []

puts 'Welcome to the DPL Cafeteria!'
puts "You are included a gratis total of $100 on the house. Enjoy!"
puts "please select your entree first!"

def entree
	puts "your options are:\n>Meat Loaf for $5\n>Mystery Meat for $3\n>Slop for $1"
	@entree_choice = gets.strip.downcase
	@entree_choice_array << @entree_choice
		if @entree_choice == 'Meat Loaf'
			puts 'You have selected Meat Loaf'
			[100-5]
			puts @wallet
		end
end



entree