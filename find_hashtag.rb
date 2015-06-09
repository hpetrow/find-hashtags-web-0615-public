def get_hashtags(tweet)
  #code here
  words = tweet.split(" ").collect { |word|
    word.scan(/\A#+[a-zA-Z]+\z/)
  }.flatten

  words.collect { |word|
    word.gsub("#", "")
  }
end
