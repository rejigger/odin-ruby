FORCE_INPUT = 10 #Forces a player to enter/re-enter their position choice
WIN_IND = [123,159,147,258,357,369,456,789] #Winning combinations, each set of numbers are a set of 3 index numbers that correspond to the screen numbers
$board = ["1","2","3","4","5","6","7","8","9"]
$player_one = true
$loop = 1 #Game is running if loop is set to 1, game ends when set to 0

def draw_board()
    puts "\e[H\e[2J" #CLEARS SCREEN
    print $board[0] + "|" + $board[1] + "|" + $board[2] + "\n"
    print "-----\n"
    print $board[3] + "|" + $board[4] + "|" + $board[5] + "\n"
    print "-----\n"
    print $board[6] + "|" + $board[7] + "|" + $board[8] + "\n"
end

def check_board()
    for i in 0..WIN_IND.length - 1
        pos = (WIN_IND[i]).digits
        if $board[pos[0]-1] == $board[pos[1]-1] && $board[pos[0]-1] == $board[pos[2]-1]
            print ($player_one ? "Player 1 Wins!" : "Player 2 Wins!")
            $loop = 0
            exit
        end
    end
end

#GAME LOOP
while $loop = 1
    draw_board()
    puts $loop
    puts ($player_one ? "Your turn, Player 1" : "Your turn, Player 2")

    choice = FORCE_INPUT
    while !(0..8).include?(choice)
        puts "Enter the number of your space (1-9):"
        choice = gets.to_i
        choice = choice - 1
        if $board[choice] == "X" || $board[choice] == "O"
            puts "Invalid selection, please try another locaiton"
            choice = FORCE_INPUT
        end
    end
        if $player_one
            $board[choice] = "X"
        else
            $board[choice] = "O"
        end
        #Check board for wins
        check_board()
        #Change Players if no winner
        $player_one = !$player_one

end
