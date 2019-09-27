puts "Let's play rock, paper, scissors"

#scores
compScore = 0
playerScore = 0

    until compScore == 5 || playerScore == 5

    puts "Select your weapon. Rock, paper or scissors?"

    player = gets.chomp.downcase
    comp = ["rock", "paper", "scissors"].sample

    #You wins
    if (player == "rock" && comp == "scissors") || (player == "scissors" && comp == "paper") || (player == "paper" && comp == "rock")
        p "You won!"
        playerScore += 1

    #draws
    elsif (player == comp)
        p "Draw! No point awarded"

    #computer wins
    else compScore += 1
        p "You lose."   
    end

    #Resulted Scores
    p "Your Score: #{playerScore}"
    p "Computer Score: #{compScore}"

    #Resulted Choices
    p "Your chose: #{player}"
    p "Computer chose: #{comp}"
end
    #Tell who wins
    p playerScore > compScore ? ("You win!").upcase : ("Computer wins!.").upercase