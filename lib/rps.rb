require ("pry")

class RPS
  def wins?(p1, p2)
    case p1
    when "rock"
      case p2
      when "paper"
        false
      when "scissors"
        true
      when "rock"
        "draw"
      else
        "How?"
      end
    when "scissors"
    when "paper"
    end
  end
end
