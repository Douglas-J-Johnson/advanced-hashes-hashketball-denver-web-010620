require "pp"

def game_hash
  game_information = {
	   :home => {
       :team_name => "Brooklyn Nets",
       :colors => ["Black", "White"],
       :players => [{
         	:player_name => "Jeff Adrien",
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
        },
        {
          	:player_name => "Jeff Adrien",
           :number => 4,
           :shoe => 18,
           :points => 10,
           :rebounds => 1,
           :assists => 1,
           :steals => 2,
           :blocks => 7,
           :slam_dunks => 2
         },
         {
           	:player_name => "Jeff Adrien",
            :number => 4,
            :shoe => 18,
            :points => 10,
            :rebounds => 1,
            :assists => 1,
            :steals => 2,
            :blocks => 7,
            :slam_dunks => 2
          },
          {
            	:player_name => "Jeff Adrien",
             :number => 4,
             :shoe => 18,
             :points => 10,
             :rebounds => 1,
             :assists => 1,
             :steals => 2,
             :blocks => 7,
             :slam_dunks => 2
           },
           {
             	:player_name => "Jeff Adrien",
              :number => 4,
              :shoe => 18,
              :points => 10,
              :rebounds => 1,
              :assists => 1,
              :steals => 2,
              :blocks => 7,
              :slam_dunks => 2
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

  pp game_information
  return game_information
end
