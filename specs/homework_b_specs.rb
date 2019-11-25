require('minitest/autorun')
require('minitest/reporters')
require_relative('../homework_b')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestSportsTeam < MiniTest::Test

  def test_get_team_name
    sports_team = SportsTeam.new("E36 TableTennis",["Paddy", "Cody"], "Stephen")
    assert_equal("E36 TableTennis", sports_team.get_team_name)

  end

  def test_get_players
    sports_team = SportsTeam.new("E36 TableTennis",["Paddy", "Cody"], "Stephen")
    assert_equal(["Paddy", "Cody"], sports_team.get_players)
  end

  def test_get_coach_name
    sports_team = SportsTeam.new("E36 TableTennis",["Paddy", "Cody"], "Stephen")
    assert_equal("Stephen", sports_team.get_coach_name)
  end

  def test_set_coach_name
    sports_team = SportsTeam.new("E36 TableTennis",["Paddy", "Cody"], "Stephen")
    sports_team.set_coach_name("Alex")
    assert_equal("Alex", sports_team.get_coach_name)
  end

end
