require ('minitest/autorun')
require('minitest/rg')
require_relative('../teams')

class TestTeams < MiniTest::Test

  def test_team_name
    team_details = Teams.new('England', ['player 1', 'player 2', 'player 3'], "mr coach")
    assert_equal('England', team_details.team_name)
  end


  def test_players
    team_details = Teams.new('England', ['player 1', 'player 2', 'player 3'], "mr coach")
    assert_equal(['player 1', 'player 2', 'player 3'], team_details.team_players)
  end

  def test_coach_name
    team_details = Teams.new('England', ['player 1', 'player 2', 'player 3'], "mr coach")
    assert_equal('mr coach', team_details.team_coach)
  end

  def test_set_coach_name
    team_details = Teams.new('England', ['player 1', 'player 2', 'player 3'], "mr coach")
    team_details.new_coach("ferguson")
    assert_equal('ferguson', team_details.team_coach)

  end

end
