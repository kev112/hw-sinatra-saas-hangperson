class HangpersonGame

  # add the necessary class methods, attributes, etc. here
  # to make the tests in spec/hangperson_game_spec.rb pass.

  # Get a word from remote "random word" service

  # def initialize()
  # end
  
  attr_accessor :wrong_guesses, :guesses, :word, :word_with_guesses
  
  def initialize(word)
    @word = word
    @wrong_guesses = ''
    @guesses = ''
    @word_with_guesses = '-' * word.length 
  end

  def self.get_random_word
    require 'uri'
    require 'net/http'
    uri = URI('http://watchout4snakes.com/wo4snakes/Random/RandomWord')
    Net::HTTP.post_form(uri ,{}).body
  end
  
  def guess (letter)
    if letter =~ /(\A\z|\W)/ || letter.nil?
      raise(ArgumentError)
    end
    
    if guesses.include?(letter.downcase) || wrong_guesses.include?(letter.downcase)
      return false
    end
    
    if @word.include?(letter)
      @guesses << letter
    else
      @wrong_guesses << letter
    end
    
  end
  
  def word_with_guesses
    # turn word to array
    # iterate through each letter in word
    # => if letter matches guesses, push letter to displayed word
    # => else, push '-' to displayed word
    # return the displayed word
    # @word.split(//)
  end
  
  def check_win_or_lose
  
  
  end
  

end
