require "pp"

def game_hash
  game_information = {
	   :home => {
       :team_name => "Brooklyn Nets",
       :colors => ["Black", "White"],
       :players => [
         {
         	:player_name => "Alan Anderson",
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
        },
        {
          	:player_name => "Reggie Evans",
           :number => 30,
           :shoe => 14,
           :points => 12,
           :rebounds => 12,
           :assists => 12,
           :steals => 12,
           :blocks => 12,
           :slam_dunks => 7
         },
         {
           	:player_name => "Brook Lopez",
            :number => 11,
            :shoe => 17,
            :points => 17,
            :rebounds => 19,
            :assists => 10,
            :steals => 3,
            :blocks => 1,
            :slam_dunks => 15
          },
          {
            :player_name => "Mason Plumlee",
            :number => 1,
             :shoe => 19,
             :points => 26,
             :rebounds => 11,
             :assists => 6,
             :steals => 3,
             :blocks => 8,
             :slam_dunks => 5
           },
           {
             	:player_name => "Jason Terry",
              :number => 31,
              :shoe => 15,
              :points => 19,
              :rebounds => 2,
              :assists => 2,
              :steals => 4,
              :blocks => 11,
              :slam_dunks => 1
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
              :number => 0,
              :shoe => 16,
              :points => 12,
              :rebounds => 4,
              :assists => 7,
              :steals => 22,
              :blocks => 15,
              :slam_dunks => 10
            },
            {
              	:player_name => "DeSagna Diop",
               :number => 2,
               :shoe => 14,
               :points => 24,
               :rebounds => 12,
               :assists => 12,
               :steals => 4,
               :blocks => 5,
               :slam_dunks => 5
             },
             {
               	:player_name => "Ben Gordon",
                :number => 8,
                :shoe => 15,
                :points => 33,
                :rebounds => 3,
                :assists => 2,
                :steals => 1,
                :blocks => 1,
                :slam_dunks => 0
              },
              {
                :player_name => "Kemba Walker",
                :number => 33,
                :shoe => 15,
                :points => 6,
                :rebounds => 12,
                :assists => 12,
                :steals => 7,
                :blocks => 5,
                :slam_dunks => 12
              }
            ]
          }
        }
  return game_information
end

def get_player_hashes(game_information)
  players = []

  game_information.each do |key, value|
    players = players + game_information[key][:players]
  end

  return players
end

def get_player(game_information, player_name)
  players = get_player_hashes(game_information)

  players.each do |player|
    if player[:player_name] == player_name then
      return player
    end
  end

  return nil
end

def num_points_scored(player_name)
  #Takes a ":player_name" returns :points(integer) for the player specified
  game_information = game_hash
  player = get_player(game_information, player_name)

  return player[:points]
end

def shoe_size(player_name)
  #Takes a ":player_name" returns :shoe(integer) for the player specified
  game_information = game_hash
  player = get_player(game_information, player_name)

  return player[:shoe]
end

def team_colors(team_name)
  game_information = game_hash

  if game_information[:home][:team_name] == team_name then
    return game_information[:home][:colors]
  else
    return game_information[:away][:colors]
  end
end

def team_names
  game_information = game_hash
  team_names = []

  team_names[0] = game_information[:home][:team_name]
  team_names[1] = game_information[:away][:team_name]

  return team_names
end

def player_numbers(team_name)
  game_information = game_hash
  player_numbers = []

  game_information.each do |key, value|
    if value[:team_name] == team_name then
      team[:players].each {|player| player_numbers.push(player[:number])}
    end
  end

  return player_numbers
end

def player_stats(player_name)
  game_information = game_hash
  player = get_player(game_information, player_name)
  player.delete(:player_name)

  return player
end

def big_shoe_rebounds
  game_information = game_hash
  players = get_player_hashes(game_information)
  number_rebounds = 0
  biggest_shoe_size = 0

  players.each do |player|
    if player[:shoe] > biggest_shoe_size then
      biggest_shoe_size = player[:shoe]
      number_rebounds = player[:rebounds]
    end
  end

  return number_rebounds
end

def most_points_scored
  game_information = game_hash
  players = get_player_hashes(game_information)
  max_points = 0
  max_player = nil

  players.each do |player|
    if player[:points] > max_points then
      max_points = player[:points]
      max_player = player[:player_name]
    end
  end

  return max_player
end

def team_total(team_data)
  team_total = 0

  team_data[:players].each {|player| team_total = team_total + player[:points]}

  return team_total
end

def winning_team
  game_information = game_hash

  if team_total(game_hash[:home]) > team_total(game_hash[:away]) then
    return game_hash[:home][:team_name]
  elsif team_total(game_hash[:home]) < team_total(game_hash[:away]) then
    return game_hash[:away][:team_name]
  else
    return "Tie"
  end
end

def player_with_longest_name
  game_information = game_hash
  players = get_player_hashes(game_information)

  longest_player_name = ""

  players.each do |player|
    if player[:player_name].length > longest_player_name.length then
      longest_player_name = player[:player_name]
    end
  end

  return longest_player_name
end

def long_name_steals_a_ton?
end
