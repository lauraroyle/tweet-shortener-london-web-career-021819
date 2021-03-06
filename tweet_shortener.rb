require 'pry'

def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet.split.map do |word|
    #split converts the tweet into an array
    #map iterates over that new array and manipulates the original array
    #word is placeholder for each word of the tweet (which is now an array)
    if dictionary.keys.include?(word.downcase)
      #if hash.keys include the tweet word (downcase is needed for the bulk shortner)
      word = dictionary[word.downcase]
      #replaces the word with the hash subsitute
    else
      word #if not, leave word as it is
    end
  end.join(" ") #join back into a string
  #???
end

def bulk_tweet_shortener(tweets)
	tweets.each do |tweet|
		puts word_substituter(tweet)
	end
end

def selective_tweet_shortener(tweet)
	return word_substituter(tweet) if tweet.length > 140
	tweet
end

def shortened_tweet_truncator(tweet)
	shortened_tweet = word_substituter(tweet)
	return shortened_tweet[0...140] if shortened_tweet.length > 140
	shortened_tweet
end
