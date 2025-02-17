#---------------------------------- DAY 16 ----------------------------------
#Task: Develop a mini-project that incorporates today's concepts.
# Instructions:
#     Choose a Project Idea: For example, a simple game, a simulation, or a management system.
#     Implement Abstraction and Encapsulation: Use classes with public and private methods.
#     Use Composition or Aggregation: Create classes that compose other classes.
#     Apply a Design Pattern: Implement the Singleton pattern or another basic pattern.
#     Use Git Branching:
#     Create a new branch for a feature.
#     Commit your changes and merge them back to the main branch.
#     Write RSpec Tests for your classes and methods.
#     Push Your Code to GitHub.

class GamingConsole
  attr_accessor :type, :user, :storage, :library
  def initialize(type, user)
    @type = type
    @user = user
    @storage = 0
    @library = []
      #new console would have 0 storage in
  end

  def add_game(title, amount) #adds game into library and keeps track of storage within console
    @library << title
    if @storage + amount > 500 #GBs
      puts "Not enough storage in console to add #{title}."
          #encapsulation method ????
    else 
      @storage += amount 
      puts "Added #{title} into #{@user}'s Library"
      puts "  Storage used: #{@storage} GB(s)."
      puts "  Storage left: #{500 - @storage} GB(s)"
      puts "\n "
    end
  end

  def play_game
    turn_on(@type)
    sign_in(@name)
    select_game
  end


  private 

  def turn_on(type) #singleton
    puts " *start up #{@type} noise* \n "
  end

  def  sign_in(user)
    puts "Welcome #{@user}!"
  end

  def  select_game
    puts "Select the game you'd like to play (copy and paste the title)"
    library.each_with_index do |title, index|
      puts "#{index +1}. #{title}"
    end

    puts "\n "
    this_game = gets.chomp

    selected_game = @library.find{|title| title.downcase == this_game.downcase}
     puts "\n "
    if selected_game.nil? #shows nil/nothing found/matches
      puts "No game associated with #{this_game}."
    else
      puts "Loading #{selected_game}..."
      puts "Loading storage..."
      puts "Starting #{selected_game}."

    end
  end

end

ps5 = GamingConsole.new("PS5", "Jess")
ps5.add_game("COD Black Ops", 64)
ps5.add_game("COD MW3", 64)
ps5.add_game("Hogwarts Legacy", 100)
ps5.add_game("GTA IV", 100)
ps5.add_game("GTA VI", 150)
ps5.add_game("Sims 7", 100)
ps5.library
ps5.play_game
