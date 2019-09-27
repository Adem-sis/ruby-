class Player

    def self.hand

      # Process of the following method is created in this.

      # Puts the console into an input wait state, and outputs the value the player types from the console

      print "Please choose one - rock, paper or scissors: "

      input = gets.chomp



      player_hand = input.downcase



      puts " You chose #{player_hand}."

    end

   end

   class Enemy

    def self.hand

      # Create processing of the method that outputs the value of rock, paper, scissors at random in this

      enemy_hand = "rps"[rand(3)].chr

      if enemy_hand == "r"

        enemy_hand == "rock"

        puts " Enemy choosen, " + "Rock"

      elsif enemy_hand == "s"

        enemy_hand == "scissors"

        puts " Enemy choosen, " + "Scissors"

      else

        enemy_hand == "Paper"

        puts " Enemy choosen, " + "Paper"

      end

    end

   end

   class Game

   # Player.hand = player_hand

   # Enemy.hand = enemy_hand



    def pon (player_hand, enemy_hand)

        Player.hand = player_hand

        Enemy.hand = enemy_hand


      if player_hand == enemy_hand

        puts "I chose #{enemy_hand} too. It's a tie. Let's try again."

        Player.hand
      else

        if player_hand == "rock" && enemy_hand == "paper"

          puts "I chose paper. Paper wraps rock. I win."

        elsif player_hand == "rock" && enemy_hand == "scissors"

          puts "I chose scissors. Rock destroys scissors. You win."

        elsif player_hand == "paper" && enemy_hand == "rock"

          puts "I chose rock. Paper wraps rock. You win."

        elsif player_hand == "paper" && enemy_hand == "scissors"

          puts "I chose scissors. Scissors cut paper. I win."

        elsif player_hand == "scissors" && enemy_hand == "rock"

          puts "I chose rock. Rock destroys scissors. I win."

        elsif player_hand == "scissors" && enemy_hand == "paper"

          puts "I chose paper. Scissors cut paper. You win."
        else
          puts "I didn't understand you. Please try again."
          Player.hand
        end #end nested if statement
      end #end if statement
    end

   end

   

   # player = Player.new

   # enemy = Enemy.new

   # game = Game.new

   Player.hand

   Enemy.hand

   Game.pon()



   # The Game method is invoked by the following description

   # game.pon(player.hand, enemy.hand)





   # The Ruby description written here is a template prepared as a hint.

   

   # If you want to implement without following the written description, you can implement it as you like.

   

   # Any implementation will passif it meets the requirements and the code quality is determined to be at a certain level.