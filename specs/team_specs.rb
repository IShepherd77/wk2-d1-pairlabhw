require ('minitest/autorun')
require('minitest/rg')
require_relative('../teams')

class TestTeams < MiniTest::Test

  def test_add_new_player()
    team_details = Teams.new('England', ['player 1', 'player 2', 'player 3'], "mr coach")
    new_team = ['player 1', 'player 2', 'player 3', 'player 4']
    assert_equal(new_team, team_details.add_new_player("player 4"))
  end

  def test_team_player_is_in_team__true()
    team_details = Teams.new('England', ['player 1', 'player 2', 'player 3'], "mr coach")
    assert_equal(true, team_details.is_player_in_team('player 3'))
  end

  def test_team_player_is_in_team__false()
    team_details = Teams.new('England', ['player 1', 'player 2', 'player 3'], "mr coach")
    assert_equal(false, team_details.is_player_in_team('Bob'))
  end

  def test_update_points__win()
    team_details = Teams.new('England', ['player 1', 'player 2', 'player 3'], "mr coach")
    assert_equal(3, team_details.update_points(true))
  end

  def test_update_points__lose()
    team_details = Teams.new('England', ['player 1', 'player 2', 'player 3'], "mr coach")
    assert_equal(0, team_details.update_points(false))
end


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

  # def test_set_coach_name()
  #   team_details = Teams.new('England', ['player 1', 'player 2', 'player 3'], "mr coach")
  #   team_details.new_coach_name('ferguson')
  #   assert_equal('ferguson', team_details.new_coach_name())
  # end

  def test_set_new_coach
  team_details = Teams.new('England', ['player 1', 'player 2', 'player 3'], "mr coach")
  team_details.new_coach('ferguson')
  assert_equal('ferguson', team_details.coach())
end
#
# def new_coach(coach_name)
#   @coach = 'Rui Vitoria'
# end



end
