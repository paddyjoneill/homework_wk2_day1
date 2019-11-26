require('minitest/autorun')
require('minitest/reporters')
require_relative('../homework_b')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestSportsTeam < MiniTest::Test

  def setup
    @team_name = "E36 TableTennis"
    @players = ["Paddy", "Cody"]
    @coach = "Stephen"
  end

  def test_get_team_name
    sports_team = SportsTeam.new(@team_name, @players, @coach)
    assert_equal("E36 TableTennis", sports_team.team_name())

  end

  def test_get_players
    sports_team = SportsTeam.new(@team_name, @players, @coach)
    assert_equal(["Paddy", "Cody"], sports_team.players())
  end

  def test_get_coach_name
    sports_team = SportsTeam.new(@team_name, @players, @coach)
    assert_equal("Stephen", sports_team.coach_name())
  end

  def test_set_coach_name
    sports_team = SportsTeam.new(@team_name, @players, @coach)
    sports_team.coach_name = "Alex"
    assert_equal("Alex", sports_team.coach_name())
  end

  def test_add_player
    sports_team = SportsTeam.new(@team_name, @players, @coach)
    sports_team.new_player("Andrew")
    assert_equal(["Paddy", "Cody", "Andrew"], sports_team.players())
  end

  def test_player_already_exists_true
    sports_team = SportsTeam.new(@team_name, @players, @coach)
    assert_equal(true, sports_team.player_already_exists("Paddy"))
  end

  def test_player_already_exists_false
    sports_team = SportsTeam.new(@team_name, @players, @coach)
    assert_equal(false, sports_team.player_already_exists("Evan"))
  end

  def test_update_points_win
    sports_team = SportsTeam.new(@team_name, @players, @coach)
    sports_team.update_points("win")
    assert_equal(3, sports_team.get_points)
  end

  def test_update_points_lost
    sports_team = SportsTeam.new(@team_name, @players, @coach)
    sports_team.update_points("loss")
    assert_equal(0, sports_team.get_points)
  end

end
