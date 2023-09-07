class TennisGame1
  Player = Struct.new(:name, :points)

  SUBTITLES_BY_POINT = {
    0 => "Love",
    1 => "Fifteen",
    2 => "Thirty",
    3 => "Forty",
  }.freeze

  def initialize(player1_name, player2_name)
    @player1 = Player.new(name: player1_name, points: 0)
    @player2 = Player.new(name: player2_name, points: 0)
  end

  def won_point(player_name)
    if player_name == @player1.name
      @player1.points += 1
    else
      @player2.points += 1
    end
  end

  def score
    if draw?
      return draw_subtitles
    elsif potential_win? && required_advantage?
      return win_subtitles
    elsif potential_win?
      return advantage_subtitles
    end
    
    point_subtitles
  end

  private

  def draw?
    @player1.points == @player2.points
  end

  def potential_win?
    [@player1.points, @player2.points].any?{ _1 >= 4 }
  end

  def draw_subtitles
    return "#{SUBTITLES_BY_POINT[@player1.points]}-All" if SUBTITLES_BY_POINT.has_key?(@player1.points) && @player1.points < 3
    "Deuce" 
  end

  def required_advantage?
    (@player1.points - @player2.points).abs >= 2 
  end

  def advantage_subtitles
     "Advantage #{@player1.points > @player2.points ? @player1.name : @player2.name}"
  end

  def win_subtitles
    "Win for #{@player1.points > @player2.points ? @player1.name : @player2.name}"
  end
  
  def point_subtitles
    "#{SUBTITLES_BY_POINT[@player1.points]}-#{SUBTITLES_BY_POINT[@player2.points]}"
  end
end
