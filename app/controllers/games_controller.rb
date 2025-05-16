require 'rest-client'
require 'json'

class GamesController < ApplicationController
  def new
    vocals = %w[a e i o u]
    consonants = ('a'..'z').to_a - vocals
    @letters = Array.new(3) { vocals.sample } + Array.new(7) { consonants.sample }
    @letters.shuffle!
  end

  def score
  end
end

