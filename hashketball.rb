require 'pry'
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here

def num_points_scored(player_name)
  the_hash = game_hash()
  all_players = the_hash[:home][:players].concat(the_hash[:away][:players])
  found_player_index = all_players.find_index do |player|
    player[:player_name] == player_name
  end 
  all_players[found_player_index][:points] 
end

def shoe_size(player_name)
  the_hash = game_hash()
  all_players = the_hash[:home][:players].concat(the_hash[:away][:players])
  found_player_index = all_players.find_index do |player|
    player[:player_name] == player_name
  end 
  all_players[found_player_index][:shoe]
end

def team_colors(team_name)
  the_hash = game_hash()
  if the_hash[:home][:team_name] == team_name
     the_hash[:home][:colors]
  else 
     the_hash[:away][:colors]
    
  end
end

def team_names
  the_hash = game_hash()
  all_team_names = []
  all_team_names << game_hash[:home][:team_name]
  all_team_names << game_hash[:away][:team_name]
  all_team_names
  #returns an array of the team names 
  
end

def player_numbers(team_name)
  the_hash = game_hash()
  if the_hash[:home][:team_name] == team_name
    the_hash[:home][:players].map do |player|
      player[:number]
    end
  else
    the_hash[:away][:players].map do |player|
      player[:number]
    end
  end

end

def player_stats(players_name)
  the_hash = game_hash()
  all_players = the_hash[:home][:players].concat(the_hash[:away][:players])
  found_player_index = all_players.find_index do |player|
    player[:player_name] == players_name
  end 
  all_players[found_player_index] 
  
  
end


def big_shoe_rebounds
 the_hash = game_hash() 
 all_players = the_hash[:home][:players].concat(the_hash[:away][:players])
 all_players.sort_by! do |player|
   player[:shoe]
 end
 player_index = all_players.length - 1 
 all_players[player_index][:rebounds]
end

def most_points_scored
  
  #returns the player that has the most points 
  
end

def winning_team
  
  #returns team that has the most points
  
end

def player_with_longest_name
  
  #returns player that has the longest names
  
end

def long_name_steals_a_ton
  
  #returns true if the player with the longest name has the most steals
  
end

  
  
  
  