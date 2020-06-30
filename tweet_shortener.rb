# Write your code here.
def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
  }
end

def word_substituter(string)
  split_string = string.split(" ")
  #for each word, compare against dictionary.
  new_sentence = []
  split_string.each do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
      new_sentence.push(word)
    else
      new_sentence.push(word)
    end
  end
  new_sentence.join(" ")
  #if matches, push dictionary key else push OW.
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  new_tweet = selective_tweet_shortener(tweet)
  if new_tweet.length > 140
    new_tweet[0..136] + "..."
  else
    new_tweet
  end
end
