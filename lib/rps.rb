#!/usr/bin/env ruby
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
      case p2
      when "paper"
        true
      when "scissors"
        "draw"
      when "rock"
        false
      else
        "How?"
      end
    when "paper"
      case p2
      when "paper"
        "draw"
      when "scissors"
        false
      when "rock"
        true
      else
        "How?"
      end
    end
  end
end

def game
  puts "Rock, Paper, or Scissors?"
  p1 = gets.chomp
  seed = rand(1..3)
  case seed
  when 1
    p2 = "rock"
  when 2
    p2 = "scissors"
  when 3
    p2 = "paper"
  end
  puts "You chose #{p1}! Your opponent chose #{p2}!"
  game = RPS.new()
  result = game.wins?(p1, p2)
  case result
  when true
    puts "You win!"
  when false
    puts "You lose!"
  when "draw"
    puts "It's a draw!"
  else
    puts "Not a valid game."
  end
  game()
end

game()
