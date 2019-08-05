require ('minitest/autorun')
require('minitest/rg')
require_relative('../teams')

class TestTeams < MiniTest::Test

  def test_add_new_player()
     team_details = Teams.new('England', ['player 1', 'player 2', 'player 3'], "mr coach")
     new_team = ['player 1', 'player 2', 'player 3', 'player 4']
     assert_equal(new_team, team_details.add_new_player("player 4"))
   end

#    def test_add_new_player()
#   team = Teams.new("Dolphins", ["Player1", "Player2", "Player3"], "Coachy McCoachFace")
#   new_team = ["Player1", "Player2", "Player3", "Player4"]
#   assert_equal(new_team, team.add_new_player("Player4"))
# end


  # def test_team_name
  #   team_details = Teams.new('England', ['player 1', 'player 2', 'player 3'], "mr coach")
  #   assert_equal('England', team_details.team_name)
  # end
  #
  # def test_players
  #   team_details = Teams.new('England', ['player 1', 'player 2', 'player 3'], "mr coach")
  #   assert_equal(['player 1', 'player 2', 'player 3'], team_details.team_players)
  # end
  #
  # def test_coach_name
  #   team_details = Teams.new('England', ['player 1', 'player 2', 'player 3'], "mr coach")
  #   assert_equal('mr coach', team_details.team_coach)
  # end

  # def test_set_coach_name
  #   team_details = Teams.new('England', ['player 1', 'player 2', 'player 3'], "mr coach")
  #   team_details.set_coach_name('ferguson')
  #   assert_equal('ferguson', team_details.set_coach_name())
  # end






end
