class Teams

  attr_accessor :team_name, :players, :coach

  def initialize(input_team_name, input_array_of_players, input_coach)
    @team_name = input_team_name
    @players = input_array_of_players
    @coach = input_coach
    @points = 0
  end

  def add_new_player(new_player)
    @players << new_player
  end

  def is_player_in_team(player)
    for each_player in @players
      return true if each_player == player
    end
    return false
  end

  def update_points(won_or_lost)
    @points += 3 if won_or_lost == true
    p @points
  end

  # def team_name()
  #   return @team_name
  # end
  #
  # def team_players()
  #   return @players
  # end
  #
  # def team_coach()
  #   return @coach
  # end

  def new_coach(coach_name)
    @coach = 'ferguson'
  end

end
