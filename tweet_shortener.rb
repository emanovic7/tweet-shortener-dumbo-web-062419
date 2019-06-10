# Write your code here.

require 'pry'


def dictionary

  dictionary = {
    :hello => 'hi',
    :to => '2',
    :two => '2',
    :too => '2',
    :for => '4',
    :four => '4',
    :be => 'b',
    :you => 'u',
    :at => '@',
    :and => '&'
  }
  #
  # dictionary.each do |word, translate|
  #   puts "#{word}: #{translate}"
  # end
  dictionary
end


def word_substituter(tweet)
  final_tweet = []
  tweet_array = tweet.split
  keys = dictionary.keys
  # binding.pry
  tweet_array.each do |word|
    keys.each do |key|
      if key.to_s == word.downcase
        word = dictionary[key]
      end
    end
      final_tweet << word
  end
   final_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |array|
    puts word_substituter(array)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
   tweet
  end
  #binding.pry
end


def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    tweet = tweet[0..136] += "..."
  else
    tweet
  end
end
