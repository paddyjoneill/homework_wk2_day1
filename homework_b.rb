class SportsTeam
  def initialize(team_name, players, coach_name)
    @team_name = team_name
    @players = players
    @coach_name = coach_name
  end

attr_reader :team_name, :players

  # def get_team_name
  #   @team_name
  # end
  #
  # def get_players
  #   @players
  # end

attr_accessor :coach_name

  # def get_coach_name
  #   @coach_name
  # end
  #
  # def set_coach_name(coach_name)
  #   @coach_name = coach_name
# end

end
