class SportsTeam
  def initialize(team_name, players, coach_name)
    @team_name = team_name
    @players = players
    @coach_name = coach_name
    @points = 0
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

  def new_player(player)
    @players << player
  end

  def player_already_exists(player)
    for person in players
      return true if person == player
    end
    return false
  end

  def get_points
    return @points
  end

  def update_points(result)
    if result == "win"
      @points += 3
      # p "new points total =#{@points}"
      return
    elsif result == "loss"
      # p "new points total =#{@points}"
      return
    end
    return p "result needs to be a win or loss"
  end

end
