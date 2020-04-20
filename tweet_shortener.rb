require "pry"

def dictionary
    dictionary = {
    "hello" => "hi", 
    "to" => 2, 
    "two" => 2, 
    "too" => 2, 
    "for" => 4, 
    "four" => 4, 
    "be" => "b", 
    "you" => "u", 
    "at" => "@", 
    "and" => "&"
}
end 

def word_substituter(str)
    array = str.split
    array.collect do |word|
      if dictionary.keys.include?(word.downcase) 
        word = dictionary[word.downcase]
        # Don't get this bit.- why dictionary[word]?
      else 
        word
    end
  end.join(" ")
end

def bulk_tweet_shortener(array)
    array.map {|tweet| puts word_substituter(tweet)}
end 
  # did it all by yourself!!! well done 

def selective_tweet_shortener(tweet)
    tweet.length > 140 ? word_substituter(tweet) : tweet
end 

def shortened_tweet_truncator(tweet)
    word_substituter(tweet)
     tweet.length > 140 ? tweet[0...137] + "..." : tweet
end 


