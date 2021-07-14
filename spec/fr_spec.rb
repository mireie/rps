require ("rspec")
require ("fr")
require ("pry")

describe("#find_and_replace") do
  it("replaces whole words") do
    phrase = Word.new("Hello world")
    expect(phrase.find_and_replace("world", "universe")).to(eq("Hello universe"))
  end
  it("replace partial words") do
    phrase = Word.new("I am walking my cat to the cathedral.")
    expect(phrase.find_and_replace("cat", "dog")).to(eq("I am walking my dog to the doghedral."))
    expect("I am walking my cat to the cathedral.".find_and_replace("cat", "dog")).to(eq("I am walking my dog to the doghedral."))
  end
end
