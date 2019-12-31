def game_hash
  game_information = {
	   :home => {
       :team_name => "Brooklyn Nets",
       :colors => ["Black", "White"],
       :players => [{
         	:player_name => "string",
          :number => integer,
          :shoe => integer,
          :points => integer,
          :rebounds => integer,
          :assists => integer,
          :steals => integer,
          :blocks => integer,
          :slam_dunks => integer
        }     
       ]
     },
     :away => {
       :team_name => "Charlotte Hornets",
       :colors => ["Turquoise","Purple"],
       :players => [
         
       ]
     }
  }

  return game_information
end
