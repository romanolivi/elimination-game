team_1 = ["Arthur", "Billy", "Carter", "Danny"]
team_2 = ["Freddie", "Gary", "Harry", "Isabel"]

def playGame(team_1, team_2)
    
    while(team_1.length > 0 && team_2.length > 0)
        rand_num = rand(1..2)
        gets.chomp()
        
        if(rand_num == 1)
            eliminate(team_1)
            showcase_teams(team_1, team_2)
        else  
            eliminate(team_2)
            showcase_teams(team_1, team_2)
        end

    end

        if team_1.length > 0 
            puts "team 1 wins"
        else  
            puts "team 2 wins"
        end

end

def eliminate(team)
    eliminated = rand(0..team.length - 1)
    puts "#{team[eliminated]} is eliminated"
    team.delete_at(eliminated)
end

def showcase_teams(team_1, team_2)
    puts "========"
    puts team_1
    puts "========"
    puts team_2
    puts "========"
end

playGame(team_1, team_2)











