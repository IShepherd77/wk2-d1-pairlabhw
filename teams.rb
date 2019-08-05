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

  # def set_coach_name(new_coach_name)
  #   @coach = new_coach_name
  # end





end
