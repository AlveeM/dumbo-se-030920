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
        }, {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        }, {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        }, {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        }, {
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
        }, {
          player_name: "Bismak Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        }, {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        }, {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        }, {
          player_name: "Brendan Haywood",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def players
  game_hash[:away][:players] + game_hash[:home][:players]
end


def find_player(name)
  players.find do |player|
    player[:player_name] == name
  end
end

def num_points_scored(name)
  #find the player
  player_hash = find_player(name)
  #get the points
  player_hash[:points]
end

def shoe_size(name)
  #find the player
  player_hash = find_player(name)
  #get the shoe size
  player_hash[:shoe]
end

# EXERCISE:
# Define a method called get_names that takes an array of instructors
# and returns just their names.
# instructors = [
#   { name: 'Graham', hometown: 'Oak Park, IL', mood: 'excited' },
#   { name: 'Sylwia', hometown: 'Zielona Góra' },
#   { name: 'Rei', hometown: 'Jersey City, NJ' }
# ]


# one_single_value = instructors.find do |instructor|
#   instructor[:name].include?("i")
# end

# p one_single_value

# instructors.each do |instructor|
#   p instructor_hash[:name]
# end

# array_of_names = instructors

# p array_of_names

# long_names = instructors.select do |instructor|
#   instructor[:name].length > 4
# end

# array_of_names = long_names.map do |instructor|
#   instructor[:mood]
# end

# p array_of_names






# # EXERCISE
# # What do the following return?

# arr = (1..100).to_a

# what = arr.select do |num|
#   num.even?
# end

# p what

# result = arr.select do |num|
#   7
# end

# p result.to_a








