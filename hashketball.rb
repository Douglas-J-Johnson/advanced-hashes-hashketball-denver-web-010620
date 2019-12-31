require "pp"

def game_hash
  game_information = {
	   :home => {
       :team_name => "Brooklyn Nets",
       :colors => ["Black", "White"],
       :players => [
         {
         	:player_name => "Alan Anderson",
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
          	:player_name => "Reggie Evans",
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
           	:player_name => "Brook Lopez",
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
            	:player_name => "Mason Plumlee",
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
             	:player_name => "Jason Terry",
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
              :player_name => "Bismack Biyombo",
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
              	:player_name => "DeSagna Diop",
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
               	:player_name => "Ben Gordon",
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
                :player_name => "Kemba Walker",
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
          }
        }

  pp game_information
  return game_information
end
