#!/usr/bin/env ruby
require ("pry")

module Language
  def abc  
    ('a'..'z')
  end
end

class Word < String
  include Language
  def initialize(phrase)
    @phrase = phrase
  end

  def find_and_replace(word, replace)
    return @phrase.gsub!(word, replace)
  end
end