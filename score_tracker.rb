class AdventureGame
    def initialize
      @total_points = 0
      @room_points = [5, 10, 15]
    end
  
    def intro
      puts "Welcome to the Adventure Game!\nYou have 0 points."
    end
  
    def menu
      puts "Choose a room (1-3) to enter or 'exit' to end the game: "
    end
  
    def enter_room(room_number)
      return puts("Not a valid room, man. Choose 1-3.") unless (1..3).cover?(room_number.to_i)
  
      points_earned = @room_points[room_number.to_i - 1]
      @total_points += points_earned
      puts "You entered #{room_number} and earned #{points_earned} points."
    end
  
    def show_total_points
      puts "Game over! You collected a total of #{@total_points} points."
    end
  end
  

  game = AdventureGame.new
  game.intro
  
  loop do
    game.menu
    choice = gets.chomp.downcase
  
    break if choice == 'exit'
    game.enter_room(choice)
  end
  
  game.show_total_points
  