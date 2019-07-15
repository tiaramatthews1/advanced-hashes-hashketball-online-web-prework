require "pry"

def game_hash
  {
  home: {
    :team_name => "Brooklyn Nets",
    :colors => ["Black", "White"],
    :Players =>
    [{:Player_name => "Alan Anderson",
      :number => 0,
      :shoe => 16,
      :points => 22,
      :rebounds => 12,
      :assists => 12,
      :steals => 3,
      :blocks => 1,
      :slamdunks => 1
    },
    {:Player_name => "Reggie Evans",
      :number => 30,
      :shoe => 14,
      :points => 12,
      :rebounds => 12,
      :assists => 12,
      :steals => 12,
      :blocks => 12,
      :slamdunks => 7
    },
    {:Player_name => "Brooke Lopez",
      :number => 11,
      :shoe => 17,
      :points => 17,
      :rebounds => 19,
      :assists => 10,
      :steals => 3,
      :blocks => 1,
      :slamdunks => 15
    }, 
    {:Player_name => "Mason Plumlee",
      :number => 1,
      :shoe => 19,
      :points => 26,
      :rebounds => 11,
      :assists => 6,
      :steals => 3,
      :blocks => 8,
      :slamdunks => 5
    },
    {:Player_name => "Jason Terry",
      :number => 31,
      :shoe => 15,
      :points => 19,
      :rebounds => 2,
      :assists => 2,
      :steals => 4,
      :blocks => 11,
      :slamdunks => 1
    }]
  },
  away: {
    :team_name => "Charlotte Hornets",
    :colors => ["Turquoise", "Purple"],
    :players =>
    [{:Player_name => "Jeff Adrien",
      :number => 4,
      :shoe => 18,
      :points => 10,
      :rebounds => 1,
      :assists => 1,
      :steals => 2,
      :blocks => 7,
      :slamdunks => 2
      },
      {:Player_name => "Bismack Biyombo",
      :number => 0,
      :shoe => 16,
      :points => 12,
      :rebounds => 4,
      :assists => 7,
      :steals => 22,
      :blocks => 15,
      :slamdunks => 10
      },
     {:Player_name => "Desagna Diop",
      :number => 2,
      :shoe => 14,
      :points => 24,
      :rebounds => 12,
      :assists => 12,
      :steals => 4,
      :blocks => 5,
      :slamdunks => 5
     },
     {:Player_name => "Ben Gordon",
      :number => 8,
      :shoe => 15,
      :points => 33,
      :rebounds => 3,
      :assists => 2,
      :steals => 1,
      :blocks => 1,
      :slamdunks => 0
     },
     {:Player_name => "Kemba Walker",
      :number => 33,
      :shoe => 15,
      :points => 6,
      :rebounds => 12,
      :assists => 12,
      :steals => 7,
      :blocks => 5,
      :slamdunks => 12
     }]
  }
  }
   end
     
  def num_points_scored(player)
    player_points = 0 
    game_hash.each do |location, team_data|
      team_data.each do |attribute, data|
        if attribute == :players
          data.each do |data_item|
            if data_item[:player_name] == player
              player_points = data_item[:points]
              end
            end
          end
        end
      end
    player_points
end

def shoe_size(player)
  player_shoe_size = 0
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :players
        data.each do |data_item|
          if data_item[:player_name] == player
            player_shoe_size = data_item[:shoe]
          end
        end
      end
    end
  end
player_shoe_size
end

def team_colors(team_names)
  game_hash.each do |location, team_data|
    if team_name == team_data[:team_name]
      return team_data[:colors]
      
      # binding.pry
    end
  end
end

def team_names
game_hash.collect do |place, team_data|
  team_data[:team_name]
  # binding.pry
end

def players_numbers(team_name)
  brooklyn_number = []
  game_hash.each do |location, team_data|
    if team_name == team_data[:team_name]
      team_data[:players].each do |player|
       player[:number]
        brooklyn_number << player[:number]
      end
    end
  end
  brooklyn_number
end

def player_stats(player)
  player_individual_stats = {}
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :players
        data.each do |data_item|
          if data_item[:player_name] == player
            player_individual_stats = data_item
            player_individual_stats.delete(:player_name)
            
            #binding.pry
          end
        end
      end
    end
  end
  player_individual_stats
end

def big_shoe_rebounds

end

def most_points_scored

end

def player_with_longest_name

end

def long_name_steals_a_ton

end











