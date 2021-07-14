require('rspec')
require('rps')
require('pry')

describe('#title_case') do
  it("returns true if rock is the object and scissors is the argument") do
    game = RPS.new()
    expect(game.wins?("rock", "scissors")).to(eq(true))
  end
  it("returns true if scissors is the object and scissors is the argument") do
    game = RPS.new()
    expect(game.wins?("scissors", "rock")).to(eq(false))
  end
  it("returns draw if p1 and p2 are the same") do
    game = RPS.new()
    expect(game.wins?("rock", "rock")).to(eq("draw"))
  end
end