def game_hash
  game_information = {
	   :home => {
       :team_name => "Brooklyn Nets",
       :colors => ["Black", "White"],
       :players => []
     },
     :away => {
       :team_name => "Charlotte Hornets",
       :colors => ["Turquoise","Purple"],
       :players => []       
     }
  }

  return game_information
end
