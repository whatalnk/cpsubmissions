# Contest ID: abc109
# Problem ID: abc109_b ( https://atcoder.jp/contests/abc109/tasks/abc109_b )
# Title: B. Shiritori
# Language: Ruby (2.3.3)
# Submitted: 2018-09-08 12:07:52 +0000 UTC ( https://atcoder.jp/contests/abc109/submissions/3153449 ) 

n = gets.chomp.to_i
words = Hash.new(0)
prev = ""
n.times do |i|
  w = gets.chomp
  if i == 0
    prev = w
  else
    if words.has_key?(w)
      puts "No"
      exit
    elsif prev[-1] != w[0]
      puts "No"
      exit
    else
      prev = w
    end
  end
  words[w] += 1
end
puts "Yes"